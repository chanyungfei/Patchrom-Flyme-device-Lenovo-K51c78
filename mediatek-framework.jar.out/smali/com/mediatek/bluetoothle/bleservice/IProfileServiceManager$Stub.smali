.class public abstract Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub;
.super Landroid/os/Binder;
.source "IProfileServiceManager.java"

# interfaces
.implements Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetoothle.bleservice.IProfileServiceManager"

.field static final TRANSACTION_getCurSupportedServerProfiles:I = 0x1

.field static final TRANSACTION_getProfileServerState:I = 0x2

.field static final TRANSACTION_isBackgroundModeEnabled:I = 0x4

.field static final TRANSACTION_launchServices:I = 0x5

.field static final TRANSACTION_registerCallback:I = 0x7

.field static final TRANSACTION_setBackgroundMode:I = 0x3

.field static final TRANSACTION_shutdownServices:I = 0x6

.field static final TRANSACTION_unregisterCallback:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.mediatek.bluetoothle.bleservice.IProfileServiceManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;
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
    const-string v1, "com.mediatek.bluetoothle.bleservice.IProfileServiceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v3, "com.mediatek.bluetoothle.bleservice.IProfileServiceManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "com.mediatek.bluetoothle.bleservice.IProfileServiceManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub;->getCurSupportedServerProfiles()[I

    move-result-object v1

    .line 54
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 60
    .end local v1    # "_result":[I
    :sswitch_2
    const-string v3, "com.mediatek.bluetoothle.bleservice.IProfileServiceManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub;->getProfileServerState(I)I

    move-result v1

    .line 64
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_3
    const-string v4, "com.mediatek.bluetoothle.bleservice.IProfileServiceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 73
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub;->setBackgroundMode(Z)Z

    move-result v1

    .line 74
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v1, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_1
    move v0, v3

    .line 72
    goto :goto_1

    .line 80
    :sswitch_4
    const-string v4, "com.mediatek.bluetoothle.bleservice.IProfileServiceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub;->isBackgroundModeEnabled()Z

    move-result v1

    .line 82
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v1, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v1    # "_result":Z
    :sswitch_5
    const-string v4, "com.mediatek.bluetoothle.bleservice.IProfileServiceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub;->launchServices()Z

    move-result v1

    .line 90
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v1, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v1    # "_result":Z
    :sswitch_6
    const-string v4, "com.mediatek.bluetoothle.bleservice.IProfileServiceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub;->shutdownServices()Z

    move-result v1

    .line 98
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v1, :cond_4

    move v3, v2

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 104
    .end local v1    # "_result":Z
    :sswitch_7
    const-string v3, "com.mediatek.bluetoothle.bleservice.IProfileServiceManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback;

    move-result-object v0

    .line 107
    .local v0, "_arg0":Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub;->registerCallback(Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 113
    .end local v0    # "_arg0":Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback;
    :sswitch_8
    const-string v3, "com.mediatek.bluetoothle.bleservice.IProfileServiceManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback;

    move-result-object v0

    .line 116
    .restart local v0    # "_arg0":Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub;->unregisterCallback(Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
