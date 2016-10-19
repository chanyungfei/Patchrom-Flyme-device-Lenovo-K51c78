.class public abstract Landroid/media/IKaraokeService$Stub;
.super Landroid/os/Binder;
.source "IKaraokeService.java"

# interfaces
.implements Landroid/media/IKaraokeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IKaraokeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IKaraokeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IKaraokeService"

.field static final TRANSACTION_closeKaraokeDevice:I = 0x2

.field static final TRANSACTION_getEarFeedbackVolume:I = 0x9

.field static final TRANSACTION_getKaraokeEffect:I = 0x7

.field static final TRANSACTION_getKaraokeMode:I = 0x5

.field static final TRANSACTION_getKaraokeState:I = 0x3

.field static final TRANSACTION_getMusicPitchLevel:I = 0x16

.field static final TRANSACTION_getShareTips:I = 0x17

.field static final TRANSACTION_getUserModeEchoDelay:I = 0xe

.field static final TRANSACTION_getUserModeEchoFeedback:I = 0x10

.field static final TRANSACTION_getUserModeEffectLevel:I = 0x12

.field static final TRANSACTION_getUserModeEqualLevel:I = 0x14

.field static final TRANSACTION_getUserModeReverberation:I = 0xc

.field static final TRANSACTION_isSupportedAudioEffect:I = 0xa

.field static final TRANSACTION_openKaraokeDevice:I = 0x1

.field static final TRANSACTION_setEarFeedbackVolume:I = 0x8

.field static final TRANSACTION_setKaraokeEffect:I = 0x6

.field static final TRANSACTION_setKaraokeMode:I = 0x4

.field static final TRANSACTION_setMusicPitchLevel:I = 0x15

.field static final TRANSACTION_setUserModeEchoDelay:I = 0xd

.field static final TRANSACTION_setUserModeEchoFeedback:I = 0xf

.field static final TRANSACTION_setUserModeEffectLevel:I = 0x11

.field static final TRANSACTION_setUserModeEqualLevel:I = 0x13

.field static final TRANSACTION_setUserModeReverberation:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.IKaraokeService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IKaraokeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IKaraokeService;
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
    const-string v1, "android.media.IKaraokeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IKaraokeService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/IKaraokeService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/media/IKaraokeService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IKaraokeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/media/IKaraokeService$Stub;->openKaraokeDevice(Landroid/os/IBinder;)I

    move-result v1

    .line 54
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :sswitch_2
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/media/IKaraokeService$Stub;->closeKaraokeDevice()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    :sswitch_3
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/media/IKaraokeService$Stub;->getKaraokeState()I

    move-result v1

    .line 69
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v1    # "_result":I
    :sswitch_4
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IKaraokeService$Stub;->setKaraokeMode(I)I

    move-result v1

    .line 79
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_5
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/media/IKaraokeService$Stub;->getKaraokeMode()I

    move-result v1

    .line 87
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v1    # "_result":I
    :sswitch_6
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IKaraokeService$Stub;->setKaraokeEffect(I)I

    move-result v1

    .line 97
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_7
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/media/IKaraokeService$Stub;->getKaraokeEffect()I

    move-result v1

    .line 105
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 111
    .end local v1    # "_result":I
    :sswitch_8
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IKaraokeService$Stub;->setEarFeedbackVolume(I)I

    move-result v1

    .line 115
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_9
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/media/IKaraokeService$Stub;->getEarFeedbackVolume()I

    move-result v1

    .line 123
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    .end local v1    # "_result":I
    :sswitch_a
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IKaraokeService$Stub;->isSupportedAudioEffect(I)I

    move-result v1

    .line 133
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_b
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IKaraokeService$Stub;->setUserModeReverberation(I)I

    move-result v1

    .line 143
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_c
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Landroid/media/IKaraokeService$Stub;->getUserModeReverberation()I

    move-result v1

    .line 151
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    .end local v1    # "_result":I
    :sswitch_d
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IKaraokeService$Stub;->setUserModeEchoDelay(I)I

    move-result v1

    .line 161
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 167
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_e
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/media/IKaraokeService$Stub;->getUserModeEchoDelay()I

    move-result v1

    .line 169
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v1    # "_result":I
    :sswitch_f
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 178
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IKaraokeService$Stub;->setUserModeEchoFeedback(I)I

    move-result v1

    .line 179
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_10
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Landroid/media/IKaraokeService$Stub;->getUserModeEchoFeedback()I

    move-result v1

    .line 187
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 193
    .end local v1    # "_result":I
    :sswitch_11
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IKaraokeService$Stub;->setUserModeEffectLevel(I)I

    move-result v1

    .line 197
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_12
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Landroid/media/IKaraokeService$Stub;->getUserModeEffectLevel()I

    move-result v1

    .line 205
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 211
    .end local v1    # "_result":I
    :sswitch_13
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 214
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IKaraokeService$Stub;->setUserModeEqualLevel(I)I

    move-result v1

    .line 215
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 221
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_14
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Landroid/media/IKaraokeService$Stub;->getUserModeEqualLevel()I

    move-result v1

    .line 223
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v1    # "_result":I
    :sswitch_15
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IKaraokeService$Stub;->setMusicPitchLevel(I)I

    move-result v1

    .line 233
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 239
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_16
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Landroid/media/IKaraokeService$Stub;->getMusicPitchLevel()I

    move-result v1

    .line 241
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 247
    .end local v1    # "_result":I
    :sswitch_17
    const-string v3, "android.media.IKaraokeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Landroid/media/IKaraokeService$Stub;->getShareTips()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
