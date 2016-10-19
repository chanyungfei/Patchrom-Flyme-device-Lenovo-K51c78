.class public abstract Lcom/mediatek/server/wifi/WifiNvRamAgent$Stub;
.super Landroid/os/Binder;
.source "WifiNvRamAgent.java"

# interfaces
.implements Lcom/mediatek/server/wifi/WifiNvRamAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/wifi/WifiNvRamAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/server/wifi/WifiNvRamAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "NvRAMAgent"

.field static final TRANSACTION_READFILE:I = 0x1

.field static final TRANSACTION_READFILEBYNAME:I = 0x3

.field static final TRANSACTION_WRITEFILE:I = 0x2

.field static final TRANSACTION_WRITEFILEBYNAME:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "NvRAMAgent"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/server/wifi/WifiNvRamAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/server/wifi/WifiNvRamAgent;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 69
    :cond_0
    const-string v1, "NvRAMAgent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/server/wifi/WifiNvRamAgent;

    if-eqz v1, :cond_1

    .line 73
    check-cast v0, Lcom/mediatek/server/wifi/WifiNvRamAgent;

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Lcom/mediatek/server/wifi/WifiNvRamAgent$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/server/wifi/WifiNvRamAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 79
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
    const/4 v3, 0x1

    .line 83
    sparse-switch p1, :sswitch_data_0

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 85
    :sswitch_0
    const-string v4, "NvRAMAgent"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :sswitch_1
    const-string v4, "NvRAMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/server/wifi/WifiNvRamAgent$Stub;->readFile(I)[B

    move-result-object v2

    .line 93
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":I
    .end local v2    # "_result":[B
    :sswitch_2
    const-string v4, "NvRAMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 103
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/server/wifi/WifiNvRamAgent$Stub;->writeFile(I[B)I

    move-result v2

    .line 104
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
