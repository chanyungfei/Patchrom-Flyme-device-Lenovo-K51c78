.class public abstract Landroid/nfc/INfcAdapterGsmaExtras$Stub;
.super Landroid/os/Binder;
.source "INfcAdapterGsmaExtras.java"

# interfaces
.implements Landroid/nfc/INfcAdapterGsmaExtras;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapterGsmaExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapterGsmaExtras$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapterGsmaExtras"

.field static final TRANSACTION_commitRouting:I = 0x3

.field static final TRANSACTION_enableMultiEvtTransaction:I = 0x6

.field static final TRANSACTION_getActiveSeValue:I = 0x1

.field static final TRANSACTION_isHceCapable:I = 0x5

.field static final TRANSACTION_isNFCEventAllowed:I = 0x7

.field static final TRANSACTION_routeAids:I = 0x4

.field static final TRANSACTION_setActiveSeValue:I = 0x2

.field static final TRANSACTION_setNfcSwpActive:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.nfc.INfcAdapterGsmaExtras"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapterGsmaExtras$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapterGsmaExtras;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "android.nfc.INfcAdapterGsmaExtras"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapterGsmaExtras;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/nfc/INfcAdapterGsmaExtras;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/nfc/INfcAdapterGsmaExtras$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/nfc/INfcAdapterGsmaExtras$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 48
    :sswitch_0
    const-string v4, "android.nfc.INfcAdapterGsmaExtras"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v4, "android.nfc.INfcAdapterGsmaExtras"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/nfc/INfcAdapterGsmaExtras$Stub;->getActiveSeValue()I

    move-result v3

    .line 55
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v3    # "_result":I
    :sswitch_2
    const-string v4, "android.nfc.INfcAdapterGsmaExtras"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapterGsmaExtras$Stub;->setActiveSeValue(I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v4, "android.nfc.INfcAdapterGsmaExtras"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/nfc/INfcAdapterGsmaExtras$Stub;->commitRouting()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    :sswitch_4
    const-string v4, "android.nfc.INfcAdapterGsmaExtras"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapterGsmaExtras$Stub;->routeAids(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v6, "android.nfc.INfcAdapterGsmaExtras"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/nfc/INfcAdapterGsmaExtras$Stub;->isHceCapable()Z

    move-result v3

    .line 88
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v3    # "_result":Z
    :sswitch_6
    const-string v6, "android.nfc.INfcAdapterGsmaExtras"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/nfc/INfcAdapterGsmaExtras$Stub;->enableMultiEvtTransaction()Z

    move-result v3

    .line 96
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v3    # "_result":Z
    :sswitch_7
    const-string v4, "android.nfc.INfcAdapterGsmaExtras"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 108
    .local v1, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/nfc/INfcAdapterGsmaExtras$Stub;->isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;)[Z

    move-result-object v3

    .line 110
    .local v3, "_result":[Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_0

    .line 116
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[Ljava/lang/String;
    .end local v3    # "_result":[Z
    :sswitch_8
    const-string v6, "android.nfc.INfcAdapterGsmaExtras"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapterGsmaExtras$Stub;->setNfcSwpActive(I)Z

    move-result v3

    .line 120
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 44
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
