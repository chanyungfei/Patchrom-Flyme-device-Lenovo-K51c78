.class public abstract Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub;
.super Landroid/os/Binder;
.source "IProximityProfileService.java"

# interfaces
.implements Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetoothle.pxp.IProximityProfileService"

.field static final TRANSACTION_getPathLoss:I = 0x1

.field static final TRANSACTION_getPxpParameters:I = 0x7

.field static final TRANSACTION_isAlertOn:I = 0x2

.field static final TRANSACTION_registerStatusChangeCallback:I = 0x4

.field static final TRANSACTION_setPxpParameters:I = 0x6

.field static final TRANSACTION_stopRemoteAlert:I = 0x3

.field static final TRANSACTION_unregisterStatusChangeCallback:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.bluetoothle.pxp.IProximityProfileService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.mediatek.bluetoothle.pxp.IProximityProfileService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 210
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "com.mediatek.bluetoothle.pxp.IProximityProfileService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.mediatek.bluetoothle.pxp.IProximityProfileService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 55
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub;->getPathLoss(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    .line 56
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v1, 0x1

    goto :goto_0

    .line 53
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v13    # "_result":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 62
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    const-string v1, "com.mediatek.bluetoothle.pxp.IProximityProfileService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 70
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub;->isAlertOn(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    .line 71
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v13, :cond_2

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v1, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v13    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 72
    .restart local v13    # "_result":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 77
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v13    # "_result":Z
    :sswitch_3
    const-string v1, "com.mediatek.bluetoothle.pxp.IProximityProfileService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 85
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_4
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub;->stopRemoteAlert(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    .line 86
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v13, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 83
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v13    # "_result":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 87
    .restart local v13    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 92
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v13    # "_result":Z
    :sswitch_4
    const-string v1, "com.mediatek.bluetoothle.pxp.IProximityProfileService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 101
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;

    move-result-object v3

    .line 102
    .local v3, "_arg1":Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub;->registerStatusChangeCallback(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;)Z

    move-result v13

    .line 103
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v13, :cond_6

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 98
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;
    .end local v13    # "_result":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .line 104
    .restart local v3    # "_arg1":Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;
    .restart local v13    # "_result":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 109
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;
    .end local v13    # "_result":Z
    :sswitch_5
    const-string v1, "com.mediatek.bluetoothle.pxp.IProximityProfileService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 112
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 118
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;

    move-result-object v3

    .line 119
    .restart local v3    # "_arg1":Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub;->unregisterStatusChangeCallback(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;)Z

    move-result v13

    .line 120
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v13, :cond_8

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 115
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;
    .end local v13    # "_result":Z
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    .line 121
    .restart local v3    # "_arg1":Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;
    .restart local v13    # "_result":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 126
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;
    .end local v13    # "_result":Z
    :sswitch_6
    const-string v1, "com.mediatek.bluetoothle.pxp.IProximityProfileService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 129
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 135
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 137
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 139
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 141
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 143
    .local v6, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg5":I
    move-object v1, p0

    .line 144
    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub;->setPxpParameters(Landroid/bluetooth/BluetoothDevice;IIIII)Z

    move-result v13

    .line 145
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v13, :cond_a

    const/4 v1, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 132
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v13    # "_result":Z
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .line 146
    .restart local v3    # "_arg1":I
    .restart local v4    # "_arg2":I
    .restart local v5    # "_arg3":I
    .restart local v6    # "_arg4":I
    .restart local v7    # "_arg5":I
    .restart local v13    # "_result":Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_b

    .line 151
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v13    # "_result":Z
    :sswitch_7
    const-string v1, "com.mediatek.bluetoothle.pxp.IProximityProfileService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 154
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 160
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 161
    .local v8, "_arg1_length":I
    if-gez v8, :cond_c

    .line 162
    const/4 v3, 0x0

    .line 168
    .local v3, "_arg1":[I
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 169
    .local v9, "_arg2_length":I
    if-gez v9, :cond_d

    .line 170
    const/4 v4, 0x0

    .line 176
    .local v4, "_arg2":[I
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 177
    .local v10, "_arg3_length":I
    if-gez v10, :cond_e

    .line 178
    const/4 v5, 0x0

    .line 184
    .local v5, "_arg3":[I
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 185
    .local v11, "_arg4_length":I
    if-gez v11, :cond_f

    .line 186
    const/4 v6, 0x0

    .line 192
    .local v6, "_arg4":[I
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 193
    .local v12, "_arg5_length":I
    if-gez v12, :cond_10

    .line 194
    const/4 v7, 0x0

    .local v7, "_arg5":[I
    :goto_11
    move-object v1, p0

    .line 199
    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub;->getPxpParameters(Landroid/bluetooth/BluetoothDevice;[I[I[I[I[I)Z

    move-result v13

    .line 200
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v13, :cond_11

    const/4 v1, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 203
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 204
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 205
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 206
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 207
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 157
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[I
    .end local v5    # "_arg3":[I
    .end local v6    # "_arg4":[I
    .end local v7    # "_arg5":[I
    .end local v8    # "_arg1_length":I
    .end local v9    # "_arg2_length":I
    .end local v10    # "_arg3_length":I
    .end local v11    # "_arg4_length":I
    .end local v12    # "_arg5_length":I
    .end local v13    # "_result":Z
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .line 165
    .restart local v8    # "_arg1_length":I
    :cond_c
    new-array v3, v8, [I

    .restart local v3    # "_arg1":[I
    goto :goto_d

    .line 173
    .restart local v9    # "_arg2_length":I
    :cond_d
    new-array v4, v9, [I

    .restart local v4    # "_arg2":[I
    goto :goto_e

    .line 181
    .restart local v10    # "_arg3_length":I
    :cond_e
    new-array v5, v10, [I

    .restart local v5    # "_arg3":[I
    goto :goto_f

    .line 189
    .restart local v11    # "_arg4_length":I
    :cond_f
    new-array v6, v11, [I

    .restart local v6    # "_arg4":[I
    goto :goto_10

    .line 197
    .restart local v12    # "_arg5_length":I
    :cond_10
    new-array v7, v12, [I

    .restart local v7    # "_arg5":[I
    goto :goto_11

    .line 201
    .restart local v13    # "_result":Z
    :cond_11
    const/4 v1, 0x0

    goto :goto_12

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
