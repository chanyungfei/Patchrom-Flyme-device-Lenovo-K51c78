.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final TRANSACTION_acquireWakeLock:I = 0x1

.field static final TRANSACTION_acquireWakeLockWithUid:I = 0x2

.field static final TRANSACTION_boostMax:I = 0x1d

.field static final TRANSACTION_boostScreenBrightness:I = 0x17

.field static final TRANSACTION_crash:I = 0x15

.field static final TRANSACTION_goToSleep:I = 0xa

.field static final TRANSACTION_isInteractive:I = 0x10

.field static final TRANSACTION_isPowerSaveMode:I = 0x11

.field static final TRANSACTION_isWakeLockLevelSupported:I = 0x7

.field static final TRANSACTION_nap:I = 0xf

.field static final TRANSACTION_powerHint:I = 0x5

.field static final TRANSACTION_reboot:I = 0x13

.field static final TRANSACTION_releaseWakeLock:I = 0x3

.field static final TRANSACTION_setAttentionLight:I = 0x1c

.field static final TRANSACTION_setBackLightProperties:I = 0x1e

.field static final TRANSACTION_setBacklightOffForWfd:I = 0x1a

.field static final TRANSACTION_setBlNotify:I = 0x1b

.field static final TRANSACTION_setPowerSaveMode:I = 0x12

.field static final TRANSACTION_setSmartBookScreen:I = 0xe

.field static final TRANSACTION_setStayOnSetting:I = 0x16

.field static final TRANSACTION_setTemporaryScreenAutoBrightnessAdjustmentSettingOverride:I = 0x19

.field static final TRANSACTION_setTemporaryScreenBrightnessSettingOverride:I = 0x18

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_startBacklight:I = 0xb

.field static final TRANSACTION_stopBacklight:I = 0xc

.field static final TRANSACTION_updateWakeLockUids:I = 0x4

.field static final TRANSACTION_updateWakeLockWorkSource:I = 0x6

.field static final TRANSACTION_userActivity:I = 0x8

.field static final TRANSACTION_wakeUp:I = 0x9

.field static final TRANSACTION_wakeUpByReason:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
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
    const-string v1, "android.os.IPowerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IPowerManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IPowerManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 22
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 378
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 52
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 54
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/WorkSource;

    .line 65
    .local v9, "_arg4":Landroid/os/WorkSource;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg5":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 66
    invoke-virtual/range {v4 .. v10}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v4, 0x1

    goto :goto_0

    .line 62
    .end local v9    # "_arg4":Landroid/os/WorkSource;
    .end local v10    # "_arg5":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/os/WorkSource;
    goto :goto_1

    .line 72
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/os/WorkSource;
    :sswitch_2
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 76
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 78
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 80
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 82
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    move-object/from16 v4, p0

    .line 83
    invoke-virtual/range {v4 .. v9}, Landroid/os/IPowerManager$Stub;->acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v4, 0x1

    goto :goto_0

    .line 89
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    :sswitch_3
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 93
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 94
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/4 v4, 0x1

    goto :goto_0

    .line 100
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    :sswitch_4
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 104
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 105
    .local v6, "_arg1":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IPowerManager$Stub;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 111
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":[I
    :sswitch_5
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 115
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 116
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IPowerManager$Stub;->powerHint(II)V

    .line 117
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 121
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_6
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 125
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/WorkSource;

    .line 132
    .local v6, "_arg1":Landroid/os/WorkSource;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 133
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 129
    .end local v6    # "_arg1":Landroid/os/WorkSource;
    .end local v7    # "_arg2":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/os/WorkSource;
    goto :goto_2

    .line 139
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":Landroid/os/WorkSource;
    :sswitch_7
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 142
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupported(I)Z

    move-result v11

    .line 143
    .local v11, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v11, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 144
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 149
    .end local v5    # "_arg0":I
    .end local v11    # "_result":Z
    :sswitch_8
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 153
    .local v20, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 155
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 156
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/os/IPowerManager$Stub;->userActivity(JII)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 162
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v20    # "_arg0":J
    :sswitch_9
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 165
    .restart local v20    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/IPowerManager$Stub;->wakeUp(J)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 171
    .end local v20    # "_arg0":J
    :sswitch_a
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 175
    .restart local v20    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 177
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 178
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/os/IPowerManager$Stub;->goToSleep(JII)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 184
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v20    # "_arg0":J
    :sswitch_b
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 187
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IPowerManager$Stub;->startBacklight(I)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 193
    .end local v5    # "_arg0":I
    :sswitch_c
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->stopBacklight()V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 200
    :sswitch_d
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 204
    .restart local v20    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 205
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/IPowerManager$Stub;->wakeUpByReason(JI)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 211
    .end local v6    # "_arg1":I
    .end local v20    # "_arg0":J
    :sswitch_e
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    .line 214
    .local v5, "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IPowerManager$Stub;->setSmartBookScreen(Z)V

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 213
    .end local v5    # "_arg0":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    .line 220
    :sswitch_f
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 223
    .restart local v20    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/IPowerManager$Stub;->nap(J)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 229
    .end local v20    # "_arg0":J
    :sswitch_10
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isInteractive()Z

    move-result v11

    .line 231
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v11, :cond_4

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 232
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 237
    .end local v11    # "_result":Z
    :sswitch_11
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isPowerSaveMode()Z

    move-result v11

    .line 239
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v11, :cond_5

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 240
    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    .line 245
    .end local v11    # "_result":Z
    :sswitch_12
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    .line 248
    .restart local v5    # "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IPowerManager$Stub;->setPowerSaveMode(Z)Z

    move-result v11

    .line 249
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    if-eqz v11, :cond_7

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 247
    .end local v5    # "_arg0":Z
    .end local v11    # "_result":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_7

    .line 250
    .restart local v5    # "_arg0":Z
    .restart local v11    # "_result":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    .line 255
    .end local v5    # "_arg0":Z
    .end local v11    # "_result":Z
    :sswitch_13
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v5, 0x1

    .line 259
    .restart local v5    # "_arg0":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/4 v7, 0x1

    .line 262
    .local v7, "_arg2":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/IPowerManager$Stub;->reboot(ZLjava/lang/String;Z)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 257
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    .line 261
    .restart local v5    # "_arg0":Z
    .restart local v6    # "_arg1":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    goto :goto_a

    .line 268
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_14
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/4 v5, 0x1

    .line 272
    .restart local v5    # "_arg0":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v6, 0x1

    .line 273
    .local v6, "_arg1":Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IPowerManager$Stub;->shutdown(ZZ)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 270
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_b

    .line 272
    .restart local v5    # "_arg0":Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_c

    .line 279
    .end local v5    # "_arg0":Z
    :sswitch_15
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 288
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 291
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 297
    .end local v5    # "_arg0":I
    :sswitch_17
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 300
    .restart local v20    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/IPowerManager$Stub;->boostScreenBrightness(J)V

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 306
    .end local v20    # "_arg0":J
    :sswitch_18
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 309
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IPowerManager$Stub;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 315
    .end local v5    # "_arg0":I
    :sswitch_19
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 318
    .local v5, "_arg0":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IPowerManager$Stub;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 324
    .end local v5    # "_arg0":F
    :sswitch_1a
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v5, 0x1

    .line 327
    .local v5, "_arg0":Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IPowerManager$Stub;->setBacklightOffForWfd(Z)V

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 326
    .end local v5    # "_arg0":Z
    :cond_c
    const/4 v5, 0x0

    goto :goto_d

    .line 333
    :sswitch_1b
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->setBlNotify()V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 340
    :sswitch_1c
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/4 v5, 0x1

    .line 344
    .restart local v5    # "_arg0":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 345
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 342
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":I
    :cond_d
    const/4 v5, 0x0

    goto :goto_e

    .line 351
    :sswitch_1d
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 354
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IPowerManager$Stub;->boostMax(I)V

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 360
    .end local v5    # "_arg0":I
    :sswitch_1e
    const-string v4, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 364
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 368
    .local v7, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 370
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 372
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .local v18, "_arg5":J
    move-object/from16 v12, p0

    move-object v13, v5

    move-object v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    .line 373
    invoke-virtual/range {v12 .. v19}, Landroid/os/IPowerManager$Stub;->setBackLightProperties(Landroid/os/IBinder;Ljava/lang/String;FIIJ)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    const/4 v4, 0x1

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
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
