.class public abstract Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPrxm.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBluetoothPrxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/IBluetoothPrxm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.IBluetoothPrxm"

.field static final TRANSACTION_configPathLossLevel:I = 0x9

.field static final TRANSACTION_configPathLossThreshold:I = 0xa

.field static final TRANSACTION_connect:I = 0xc

.field static final TRANSACTION_connectByProfileManager:I = 0xb

.field static final TRANSACTION_disconnect:I = 0xd

.field static final TRANSACTION_getConnectedDevices:I = 0x2

.field static final TRANSACTION_getDeviceInfo:I = 0x7

.field static final TRANSACTION_getProfileManagerState:I = 0x8

.field static final TRANSACTION_getRegisteredDevices:I = 0x1

.field static final TRANSACTION_getRemoteCapability:I = 0xe

.field static final TRANSACTION_getRemoteTxPower:I = 0xf

.field static final TRANSACTION_registerDevice:I = 0x3

.field static final TRANSACTION_registerDeviceCallback:I = 0x5

.field static final TRANSACTION_setLinkLoss:I = 0x11

.field static final TRANSACTION_setPathLoss:I = 0x10

.field static final TRANSACTION_unregisterDevice:I = 0x4

.field static final TRANSACTION_unregisterDeviceCallback:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothPrxm;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/IBluetoothPrxm;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/bluetooth/IBluetoothPrxm;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->getRegisteredDevices()[Lcom/mediatek/bluetooth/BluetoothPrxmDevice;

    move-result-object v2

    .line 52
    .local v2, "_result":[Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 58
    .end local v2    # "_result":[Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
    :sswitch_2
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 60
    .local v2, "_result":[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 66
    .end local v2    # "_result":[Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string v5, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 74
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->registerDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 75
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 81
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 89
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->unregisterDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 95
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string v5, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 100
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 105
    .local v1, "_arg1":Landroid/os/ResultReceiver;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->registerDeviceCallback(Ljava/lang/String;Landroid/os/ResultReceiver;)Z

    move-result v2

    .line 106
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 103
    .end local v1    # "_arg1":Landroid/os/ResultReceiver;
    .end local v2    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ResultReceiver;
    goto :goto_3

    .line 112
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ResultReceiver;
    :sswitch_6
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->unregisterDeviceCallback(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v5, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->getDeviceInfo(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothPrxmDevice;

    move-result-object v2

    .line 125
    .local v2, "_result":Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v2, :cond_5

    .line 127
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {v2, p3, v4}, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 131
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
    :sswitch_8
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->getProfileManagerState(Ljava/lang/String;)I

    move-result v2

    .line 141
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_9
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 152
    .local v1, "_arg1":B
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->configPathLossLevel(Ljava/lang/String;B)I

    move-result v2

    .line 153
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 159
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":B
    .end local v2    # "_result":I
    :sswitch_a
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 164
    .restart local v1    # "_arg1":B
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->configPathLossThreshold(Ljava/lang/String;B)I

    move-result v2

    .line 165
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 171
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":B
    .end local v2    # "_result":I
    :sswitch_b
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 174
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 179
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->connectByProfileManager(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 180
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_result":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 186
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_c
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->connect(Ljava/lang/String;)I

    move-result v2

    .line 190
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_d
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->disconnect(Ljava/lang/String;)I

    move-result v2

    .line 200
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_e
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->getRemoteCapability(Ljava/lang/String;)I

    move-result v2

    .line 210
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 216
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_f
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->getRemoteTxPower(Ljava/lang/String;)I

    move-result v2

    .line 220
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 226
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_10
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 231
    .restart local v1    # "_arg1":B
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->setPathLoss(Ljava/lang/String;B)I

    move-result v2

    .line 232
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 238
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":B
    .end local v2    # "_result":I
    :sswitch_11
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 243
    .restart local v1    # "_arg1":B
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/IBluetoothPrxm$Stub;->setLinkLoss(Ljava/lang/String;B)I

    move-result v2

    .line 244
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
