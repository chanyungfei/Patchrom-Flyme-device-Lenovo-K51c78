.class public abstract Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPrxr.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBluetoothPrxr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/IBluetoothPrxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.IBluetoothPrxr"

.field static final TRANSACTION_disableService:I = 0x4

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_disconnectByAddr:I = 0xa

.field static final TRANSACTION_enableService:I = 0x3

.field static final TRANSACTION_getConnectedDevices:I = 0x5

.field static final TRANSACTION_getProfileManagerState:I = 0x7

.field static final TRANSACTION_getServiceState:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_responseAuthorizeInd:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothPrxr;
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
    const-string v1, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/IBluetoothPrxr;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/bluetooth/IBluetoothPrxr;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 58
    .local v0, "_arg0":Landroid/os/ResultReceiver;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->registerCallback(Landroid/os/ResultReceiver;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Landroid/os/ResultReceiver;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ResultReceiver;
    goto :goto_1

    .line 64
    .end local v0    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_2
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 72
    .restart local v0    # "_arg0":Landroid/os/ResultReceiver;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->unregisterCallback(Landroid/os/ResultReceiver;)Z

    move-result v2

    .line 73
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v2, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Landroid/os/ResultReceiver;
    .end local v2    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ResultReceiver;
    goto :goto_2

    .line 74
    .restart local v2    # "_result":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 79
    .end local v0    # "_arg0":Landroid/os/ResultReceiver;
    .end local v2    # "_result":Z
    :sswitch_3
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->enableService()I

    move-result v2

    .line 81
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v2    # "_result":I
    :sswitch_4
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->disableService()I

    move-result v2

    .line 89
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v2    # "_result":I
    :sswitch_5
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 97
    .local v2, "_result":[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 103
    .end local v2    # "_result":[Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->getServiceState()I

    move-result v2

    .line 105
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 111
    .end local v2    # "_result":I
    :sswitch_7
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->getProfileManagerState(Ljava/lang/String;)I

    move-result v2

    .line 115
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_8
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 126
    .local v1, "_arg1":B
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->responseAuthorizeInd(IB)I

    move-result v2

    .line 127
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":B
    .end local v2    # "_result":I
    :sswitch_9
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->disconnect(I)I

    move-result v2

    .line 137
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_a
    const-string v3, "com.mediatek.bluetooth.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/IBluetoothPrxr$Stub;->disconnectByAddr(Ljava/lang/String;)I

    move-result v2

    .line 147
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
