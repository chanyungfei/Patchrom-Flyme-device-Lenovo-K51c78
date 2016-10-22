.class public abstract Lcom/mediatek/perfservice/IPerfService$Stub;
.super Landroid/os/Binder;
.source "IPerfService.java"

# interfaces
.implements Lcom/mediatek/perfservice/IPerfService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/perfservice/IPerfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/perfservice/IPerfService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.perfservice.IPerfService"

.field static final TRANSACTION_boostDisable:I = 0x2

.field static final TRANSACTION_boostEnable:I = 0x1

.field static final TRANSACTION_boostEnableTimeout:I = 0x3

.field static final TRANSACTION_boostEnableTimeoutMs:I = 0x4

.field static final TRANSACTION_dumpAll:I = 0x14

.field static final TRANSACTION_notifyAppState:I = 0x5

.field static final TRANSACTION_notifyDisplayType:I = 0x17

.field static final TRANSACTION_notifyFrameUpdate:I = 0x16

.field static final TRANSACTION_notifyUserStatus:I = 0x18

.field static final TRANSACTION_setFavorPid:I = 0x15

.field static final TRANSACTION_userDisable:I = 0x10

.field static final TRANSACTION_userDisableAll:I = 0x12

.field static final TRANSACTION_userEnable:I = 0xd

.field static final TRANSACTION_userEnableTimeout:I = 0xe

.field static final TRANSACTION_userEnableTimeoutMs:I = 0xf

.field static final TRANSACTION_userGetCapability:I = 0x9

.field static final TRANSACTION_userReg:I = 0x6

.field static final TRANSACTION_userRegBigLittle:I = 0x7

.field static final TRANSACTION_userRegScn:I = 0xa

.field static final TRANSACTION_userRegScnConfig:I = 0xb

.field static final TRANSACTION_userResetAll:I = 0x11

.field static final TRANSACTION_userRestoreAll:I = 0x13

.field static final TRANSACTION_userUnreg:I = 0x8

.field static final TRANSACTION_userUnregScn:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/perfservice/IPerfService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/perfservice/IPerfService;
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
    const-string v1, "com.mediatek.perfservice.IPerfService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/mediatek/perfservice/IPerfService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/mediatek/perfservice/IPerfService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/perfservice/IPerfService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 298
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->boostEnable(I)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 53
    goto :goto_0

    .line 57
    .end local v1    # "_arg0":I
    :sswitch_2
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->boostDisable(I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 62
    goto :goto_0

    .line 66
    .end local v1    # "_arg0":I
    :sswitch_3
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/perfservice/IPerfService$Stub;->boostEnableTimeout(II)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 73
    goto :goto_0

    .line 77
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_4
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 81
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 82
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/perfservice/IPerfService$Stub;->boostEnableTimeoutMs(II)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 84
    goto :goto_0

    .line 88
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_5
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 95
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/perfservice/IPerfService$Stub;->notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 97
    goto :goto_0

    .line 101
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :sswitch_6
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 109
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 110
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/perfservice/IPerfService$Stub;->userReg(IIII)I

    move-result v7

    .line 111
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 113
    goto/16 :goto_0

    .line 117
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v7    # "_result":I
    :sswitch_7
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 127
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 129
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg5":I
    move-object v0, p0

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService$Stub;->userRegBigLittle(IIIIII)I

    move-result v7

    .line 131
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 133
    goto/16 :goto_0

    .line 137
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_result":I
    :sswitch_8
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->userUnreg(I)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 142
    goto/16 :goto_0

    .line 146
    .end local v1    # "_arg0":I
    :sswitch_9
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->userGetCapability(I)I

    move-result v7

    .line 150
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 152
    goto/16 :goto_0

    .line 156
    .end local v1    # "_arg0":I
    .end local v7    # "_result":I
    :sswitch_a
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 160
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/perfservice/IPerfService$Stub;->userRegScn(II)I

    move-result v7

    .line 162
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 164
    goto/16 :goto_0

    .line 168
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v7    # "_result":I
    :sswitch_b
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 172
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 178
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 180
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg5":I
    move-object v0, p0

    .line 181
    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService$Stub;->userRegScnConfig(IIIIII)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 183
    goto/16 :goto_0

    .line 187
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :sswitch_c
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 190
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->userUnregScn(I)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 192
    goto/16 :goto_0

    .line 196
    .end local v1    # "_arg0":I
    :sswitch_d
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->userEnable(I)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 201
    goto/16 :goto_0

    .line 205
    .end local v1    # "_arg0":I
    :sswitch_e
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/perfservice/IPerfService$Stub;->userEnableTimeout(II)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 212
    goto/16 :goto_0

    .line 216
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_f
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/perfservice/IPerfService$Stub;->userEnableTimeoutMs(II)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 223
    goto/16 :goto_0

    .line 227
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_10
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 230
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->userDisable(I)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 232
    goto/16 :goto_0

    .line 236
    .end local v1    # "_arg0":I
    :sswitch_11
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/mediatek/perfservice/IPerfService$Stub;->userResetAll()V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 239
    goto/16 :goto_0

    .line 243
    :sswitch_12
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/mediatek/perfservice/IPerfService$Stub;->userDisableAll()V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 246
    goto/16 :goto_0

    .line 250
    :sswitch_13
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/mediatek/perfservice/IPerfService$Stub;->userRestoreAll()V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 253
    goto/16 :goto_0

    .line 257
    :sswitch_14
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/mediatek/perfservice/IPerfService$Stub;->dumpAll()V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 260
    goto/16 :goto_0

    .line 264
    :sswitch_15
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->setFavorPid(I)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 269
    goto/16 :goto_0

    .line 273
    .end local v1    # "_arg0":I
    :sswitch_16
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 276
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->notifyFrameUpdate(I)V

    move v0, v8

    .line 277
    goto/16 :goto_0

    .line 281
    .end local v1    # "_arg0":I
    :sswitch_17
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 284
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/IPerfService$Stub;->notifyDisplayType(I)V

    move v0, v8

    .line 285
    goto/16 :goto_0

    .line 289
    .end local v1    # "_arg0":I
    :sswitch_18
    const-string v0, "com.mediatek.perfservice.IPerfService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 293
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 294
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/perfservice/IPerfService$Stub;->notifyUserStatus(II)V

    move v0, v8

    .line 295
    goto/16 :goto_0

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
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
