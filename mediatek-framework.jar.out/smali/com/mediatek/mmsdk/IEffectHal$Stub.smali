.class public abstract Lcom/mediatek/mmsdk/IEffectHal$Stub;
.super Landroid/os/Binder;
.source "IEffectHal.java"

# interfaces
.implements Lcom/mediatek/mmsdk/IEffectHal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/IEffectHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IEffectHal$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.mmsdk.IEffectHal"

.field static final TRANSACTION_abort:I = 0x6

.field static final TRANSACTION_addInputFrame:I = 0xd

.field static final TRANSACTION_addOutputFrame:I = 0xe

.field static final TRANSACTION_configure:I = 0x3

.field static final TRANSACTION_getCaptureRequirement:I = 0xa

.field static final TRANSACTION_getNameVersion:I = 0x7

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_prepare:I = 0xb

.field static final TRANSACTION_release:I = 0xc

.field static final TRANSACTION_setEffectListener:I = 0x8

.field static final TRANSACTION_setParameter:I = 0x9

.field static final TRANSACTION_start:I = 0x5

.field static final TRANSACTION_unconfigure:I = 0x4

.field static final TRANSACTION_uninit:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectHal;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.mediatek.mmsdk.IEffectHal"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/mmsdk/IEffectHal;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/mediatek/mmsdk/IEffectHal;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/mediatek/mmsdk/IEffectHal$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->init()I

    move-result v2

    .line 50
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v2    # "_result":I
    :sswitch_2
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->uninit()I

    move-result v2

    .line 58
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v2    # "_result":I
    :sswitch_3
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->configure()I

    move-result v2

    .line 66
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v2    # "_result":I
    :sswitch_4
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->unconfigure()I

    move-result v2

    .line 74
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v2    # "_result":I
    :sswitch_5
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->start()J

    move-result-wide v2

    .line 82
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 88
    .end local v2    # "_result":J
    :sswitch_6
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mmsdk/BaseParameters;

    .line 96
    .local v0, "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->abort(Lcom/mediatek/mmsdk/BaseParameters;)I

    move-result v2

    .line 97
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    .end local v2    # "_result":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_1

    .line 103
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_7
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/mediatek/mmsdk/EffectHalVersion;

    invoke-direct {v0}, Lcom/mediatek/mmsdk/EffectHalVersion;-><init>()V

    .line 106
    .local v0, "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->getNameVersion(Lcom/mediatek/mmsdk/EffectHalVersion;)I

    move-result v2

    .line 107
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v0, p3, v4}, Lcom/mediatek/mmsdk/EffectHalVersion;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 114
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    .end local v2    # "_result":I
    :sswitch_8
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/mmsdk/IEffectListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectListener;

    move-result-object v0

    .line 123
    .local v0, "_arg0":Lcom/mediatek/mmsdk/IEffectListener;
    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->setEffectListener(Lcom/mediatek/mmsdk/IEffectListener;)I

    move-result v2

    .line 124
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/IEffectListener;
    .end local v2    # "_result":I
    :sswitch_9
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 136
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_a
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/mediatek/mmsdk/BaseParameters;

    invoke-direct {v0}, Lcom/mediatek/mmsdk/BaseParameters;-><init>()V

    .line 145
    .local v0, "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->getCaptureRequirement(Lcom/mediatek/mmsdk/BaseParameters;)I

    move-result v2

    .line 146
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    invoke-virtual {v0, p3, v4}, Lcom/mediatek/mmsdk/BaseParameters;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 153
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 159
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    .end local v2    # "_result":I
    :sswitch_b
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->prepare()I

    move-result v2

    .line 161
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 167
    .end local v2    # "_result":I
    :sswitch_c
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->release()I

    move-result v2

    .line 169
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v2    # "_result":I
    :sswitch_d
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 178
    sget-object v5, Landroid/view/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GraphicBuffer;

    .line 184
    .local v0, "_arg0":Landroid/view/GraphicBuffer;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 185
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mmsdk/BaseParameters;

    .line 190
    .local v1, "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->addInputFrame(Landroid/view/GraphicBuffer;Lcom/mediatek/mmsdk/BaseParameters;)I

    move-result v2

    .line 191
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v0    # "_arg0":Landroid/view/GraphicBuffer;
    .end local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    .end local v2    # "_result":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/GraphicBuffer;
    goto :goto_2

    .line 188
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_3

    .line 197
    .end local v0    # "_arg0":Landroid/view/GraphicBuffer;
    .end local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_e
    const-string v5, "com.mediatek.mmsdk.IEffectHal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 200
    sget-object v5, Landroid/view/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GraphicBuffer;

    .line 206
    .restart local v0    # "_arg0":Landroid/view/GraphicBuffer;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 207
    sget-object v5, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mmsdk/BaseParameters;

    .line 212
    .restart local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/mmsdk/IEffectHal$Stub;->addOutputFrame(Landroid/view/GraphicBuffer;Lcom/mediatek/mmsdk/BaseParameters;)I

    move-result v2

    .line 213
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v0    # "_arg0":Landroid/view/GraphicBuffer;
    .end local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    .end local v2    # "_result":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/GraphicBuffer;
    goto :goto_4

    .line 210
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_5

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
