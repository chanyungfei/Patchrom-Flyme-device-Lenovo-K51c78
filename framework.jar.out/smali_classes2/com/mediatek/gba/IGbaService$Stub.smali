.class public abstract Lcom/mediatek/gba/IGbaService$Stub;
.super Landroid/os/Binder;
.source "IGbaService.java"

# interfaces
.implements Lcom/mediatek/gba/IGbaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gba/IGbaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gba/IGbaService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.gba.IGbaService"

.field static final TRANSACTION_getGbaSupported:I = 0x1

.field static final TRANSACTION_getGbaSupportedForSubscriber:I = 0x2

.field static final TRANSACTION_isGbaKeyExpired:I = 0x3

.field static final TRANSACTION_isGbaKeyExpiredForSubscriber:I = 0x4

.field static final TRANSACTION_runGbaAuthentication:I = 0x5

.field static final TRANSACTION_runGbaAuthenticationForSubscriber:I = 0x6

.field static final TRANSACTION_setNetwork:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.mediatek.gba.IGbaService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/gba/IGbaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/gba/IGbaService;
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
    const-string v1, "com.mediatek.gba.IGbaService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/gba/IGbaService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/gba/IGbaService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/mediatek/gba/IGbaService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/gba/IGbaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v5, "com.mediatek.gba.IGbaService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/gba/IGbaService$Stub;->getGbaSupported()I

    move-result v4

    .line 52
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v4    # "_result":I
    :sswitch_2
    const-string v5, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/gba/IGbaService$Stub;->getGbaSupportedForSubscriber(I)I

    move-result v4

    .line 62
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_3
    const-string v7, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 73
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/gba/IGbaService$Stub;->isGbaKeyExpired(Ljava/lang/String;[B)Z

    move-result v4

    .line 74
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v7, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 86
    .restart local v1    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/gba/IGbaService$Stub;->isGbaKeyExpiredForSubscriber(Ljava/lang/String;[BI)Z

    move-result v4

    .line 88
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_5
    const-string v7, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 100
    .restart local v1    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v6

    .line 101
    .local v2, "_arg2":Z
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/gba/IGbaService$Stub;->runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v4

    .line 102
    .local v4, "_result":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v4, :cond_3

    .line 104
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v4, p3, v6}, Lcom/mediatek/gba/NafSessionKey;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v2    # "_arg2":Z
    .end local v4    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :cond_2
    move v2, v5

    .line 100
    goto :goto_1

    .line 108
    .restart local v2    # "_arg2":Z
    .restart local v4    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Z
    .end local v4    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :sswitch_6
    const-string v7, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 120
    .restart local v1    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v2, v6

    .line 122
    .restart local v2    # "_arg2":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 123
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/gba/IGbaService$Stub;->runGbaAuthenticationForSubscriber(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v4

    .line 124
    .restart local v4    # "_result":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v4, :cond_5

    .line 126
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {v4, p3, v6}, Lcom/mediatek/gba/NafSessionKey;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :cond_4
    move v2, v5

    .line 120
    goto :goto_2

    .line 130
    .restart local v2    # "_arg2":Z
    .restart local v3    # "_arg3":I
    .restart local v4    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :sswitch_7
    const-string v5, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 139
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 144
    .local v0, "_arg0":Landroid/net/Network;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/mediatek/gba/IGbaService$Stub;->setNetwork(Landroid/net/Network;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":Landroid/net/Network;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Network;
    goto :goto_3

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
