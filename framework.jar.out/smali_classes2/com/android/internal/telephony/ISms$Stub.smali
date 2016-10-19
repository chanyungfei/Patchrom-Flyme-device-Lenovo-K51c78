.class public abstract Lcom/android/internal/telephony/ISms$Stub;
.super Landroid/os/Binder;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISms"

.field static final TRANSACTION_activateCellBroadcastSmsForSubscriber:I = 0x35

.field static final TRANSACTION_copyMessageToIccEf:I = 0x5

.field static final TRANSACTION_copyMessageToIccEfForSubscriber:I = 0x6

.field static final TRANSACTION_copyTextMessageToIccCardForSubscriber:I = 0x24

.field static final TRANSACTION_disableCellBroadcast:I = 0x10

.field static final TRANSACTION_disableCellBroadcastForSubscriber:I = 0x11

.field static final TRANSACTION_disableCellBroadcastRange:I = 0x14

.field static final TRANSACTION_disableCellBroadcastRangeForSubscriber:I = 0x15

.field static final TRANSACTION_enableCellBroadcast:I = 0xe

.field static final TRANSACTION_enableCellBroadcastForSubscriber:I = 0xf

.field static final TRANSACTION_enableCellBroadcastRange:I = 0x12

.field static final TRANSACTION_enableCellBroadcastRangeForSubscriber:I = 0x13

.field static final TRANSACTION_getAllMessagesFromIccEf:I = 0x1

.field static final TRANSACTION_getAllMessagesFromIccEfByModeForSubscriber:I = 0x23

.field static final TRANSACTION_getAllMessagesFromIccEfForSubscriber:I = 0x2

.field static final TRANSACTION_getCellBroadcastSmsConfigForSubscriber:I = 0x32

.field static final TRANSACTION_getImsSmsFormat:I = 0x1e

.field static final TRANSACTION_getImsSmsFormatForSubscriber:I = 0x1f

.field static final TRANSACTION_getMessageFromIccEfForSubscriber:I = 0x31

.field static final TRANSACTION_getPreferredSmsSubscription:I = 0x1d

.field static final TRANSACTION_getPremiumSmsPermission:I = 0x16

.field static final TRANSACTION_getPremiumSmsPermissionForSubscriber:I = 0x17

.field static final TRANSACTION_getSmsParametersForSubscriber:I = 0x2f

.field static final TRANSACTION_getSmsSimMemoryStatusForSubscriber:I = 0x28

.field static final TRANSACTION_injectSmsPdu:I = 0xb

.field static final TRANSACTION_insertRawMessageToIccCardForSubscriber:I = 0x2c

.field static final TRANSACTION_insertTextMessageToIccCardForSubscriber:I = 0x2b

.field static final TRANSACTION_isImsSmsSupported:I = 0x1a

.field static final TRANSACTION_isImsSmsSupportedForSubscriber:I = 0x1b

.field static final TRANSACTION_isSMSPromptEnabled:I = 0x20

.field static final TRANSACTION_isSmsReadyForSubscriber:I = 0x26

.field static final TRANSACTION_isSmsSimPickActivityNeeded:I = 0x1c

.field static final TRANSACTION_queryCellBroadcastSmsActivationForSubscriber:I = 0x34

.field static final TRANSACTION_removeCellBroadcastMsgForSubscriber:I = 0x36

.field static final TRANSACTION_sendData:I = 0x7

.field static final TRANSACTION_sendDataForSubscriber:I = 0x8

.field static final TRANSACTION_sendDataWithOriginalPortForSubscriber:I = 0x25

.field static final TRANSACTION_sendMultipartText:I = 0xc

.field static final TRANSACTION_sendMultipartTextForSubscriber:I = 0xd

.field static final TRANSACTION_sendMultipartTextWithEncodingTypeForSubscriber:I = 0x2a

.field static final TRANSACTION_sendMultipartTextWithExtraParamsForSubscriber:I = 0x2e

.field static final TRANSACTION_sendStoredMultipartText:I = 0x22

.field static final TRANSACTION_sendStoredText:I = 0x21

.field static final TRANSACTION_sendText:I = 0x9

.field static final TRANSACTION_sendTextForSubscriber:I = 0xa

.field static final TRANSACTION_sendTextWithEncodingTypeForSubscriber:I = 0x29

.field static final TRANSACTION_sendTextWithExtraParamsForSubscriber:I = 0x2d

.field static final TRANSACTION_setCellBroadcastSmsConfigForSubscriber:I = 0x33

.field static final TRANSACTION_setEtwsConfigForSubscriber:I = 0x37

.field static final TRANSACTION_setPremiumSmsPermission:I = 0x18

.field static final TRANSACTION_setPremiumSmsPermissionForSubscriber:I = 0x19

.field static final TRANSACTION_setSmsMemoryStatusForSubscriber:I = 0x27

.field static final TRANSACTION_setSmsParametersForSubscriber:I = 0x30

.field static final TRANSACTION_updateMessageOnIccEf:I = 0x3

.field static final TRANSACTION_updateMessageOnIccEfForSubscriber:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-string v1, "com.android.internal.telephony.ISms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/android/internal/telephony/ISms;

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ISms$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 38
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
    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 1023
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 56
    :sswitch_0
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x1

    goto :goto_0

    .line 61
    :sswitch_1
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v37

    .line 65
    .local v37, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 67
    const/4 v2, 0x1

    goto :goto_0

    .line 71
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_2
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 75
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;

    move-result-object v37

    .line 77
    .restart local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    const/4 v2, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_3
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 89
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 91
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 92
    .local v6, "_arg3":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v36

    .line 93
    .local v36, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v36, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 99
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":[B
    .end local v36    # "_result":Z
    :sswitch_4
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 103
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 107
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 109
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .local v7, "_arg4":[B
    move-object/from16 v2, p0

    .line 110
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    move-result v36

    .line 111
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v36, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 112
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 117
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":[B
    .end local v36    # "_result":Z
    :sswitch_5
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 123
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 125
    .local v5, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 126
    .local v6, "_arg3":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v36

    .line 127
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v36, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 128
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 133
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":[B
    .end local v36    # "_result":Z
    :sswitch_6
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 137
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 141
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 143
    .restart local v6    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .restart local v7    # "_arg4":[B
    move-object/from16 v2, p0

    .line 144
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z

    move-result v36

    .line 145
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v36, :cond_3

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 146
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 151
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":[B
    .end local v7    # "_arg4":[B
    .end local v36    # "_result":Z
    :sswitch_7
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 157
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 161
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 163
    .restart local v7    # "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 170
    .local v8, "_arg5":Landroid/app/PendingIntent;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 171
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .local v9, "_arg6":Landroid/app/PendingIntent;
    :goto_6
    move-object/from16 v2, p0

    .line 176
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/ISms$Stub;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 167
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_5

    .line 174
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_6

    .line 182
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":[B
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    :sswitch_8
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 188
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 190
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 194
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 196
    .local v8, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 197
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 203
    .restart local v9    # "_arg6":Landroid/app/PendingIntent;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 204
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .local v10, "_arg7":Landroid/app/PendingIntent;
    :goto_8
    move-object/from16 v2, p0

    .line 209
    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/ISms$Stub;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 200
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    .end local v10    # "_arg7":Landroid/app/PendingIntent;
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_7

    .line 207
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "_arg7":Landroid/app/PendingIntent;
    goto :goto_8

    .line 215
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":[B
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    .end local v10    # "_arg7":Landroid/app/PendingIntent;
    :sswitch_9
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 221
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 223
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 225
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 226
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 232
    .local v7, "_arg4":Landroid/app/PendingIntent;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 233
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .local v8, "_arg5":Landroid/app/PendingIntent;
    :goto_a
    move-object/from16 v2, p0

    .line 238
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/ISms$Stub;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 229
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_9

    .line 236
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_a

    .line 244
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_a
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 248
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 250
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 252
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 254
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 257
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 263
    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 264
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .restart local v9    # "_arg6":Landroid/app/PendingIntent;
    :goto_c
    move-object/from16 v2, p0

    .line 269
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/ISms$Stub;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 260
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_b

    .line 267
    :cond_b
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_c

    .line 275
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    :sswitch_b
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 279
    .local v3, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 281
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 282
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 287
    .local v5, "_arg2":Landroid/app/PendingIntent;
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISms$Stub;->injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 285
    .end local v5    # "_arg2":Landroid/app/PendingIntent;
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_d

    .line 293
    .end local v3    # "_arg0":[B
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_c
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 299
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 301
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 303
    .local v15, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    .line 305
    .local v16, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .local v17, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v11, p0

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    .line 306
    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 312
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v17    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_d
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 316
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 318
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 320
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 322
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v23

    .line 324
    .local v23, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 326
    .restart local v17    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .local v25, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v18, p0

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v17

    .line 327
    invoke-virtual/range {v18 .. v25}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 333
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v23    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_e
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 337
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 338
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcast(II)Z

    move-result v36

    .line 339
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v36, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 340
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 345
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v36    # "_result":Z
    :sswitch_f
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 349
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 351
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 352
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastForSubscriber(III)Z

    move-result v36

    .line 353
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v36, :cond_e

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 354
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 359
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v36    # "_result":Z
    :sswitch_10
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 363
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 364
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcast(II)Z

    move-result v36

    .line 365
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v36, :cond_f

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 366
    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    .line 371
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v36    # "_result":Z
    :sswitch_11
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 375
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 377
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 378
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastForSubscriber(III)Z

    move-result v36

    .line 379
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v36, :cond_10

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 380
    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    .line 385
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v36    # "_result":Z
    :sswitch_12
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 389
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 391
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 392
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRange(III)Z

    move-result v36

    .line 393
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v36, :cond_11

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 394
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .line 399
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v36    # "_result":Z
    :sswitch_13
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 403
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 405
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 407
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 408
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v36

    .line 409
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    if-eqz v36, :cond_12

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 410
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 415
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v36    # "_result":Z
    :sswitch_14
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 419
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 421
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 422
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRange(III)Z

    move-result v36

    .line 423
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    if-eqz v36, :cond_13

    const/4 v2, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 424
    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .line 429
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v36    # "_result":Z
    :sswitch_15
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 433
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 435
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 437
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 438
    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v36

    .line 439
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    if-eqz v36, :cond_14

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 440
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 445
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v36    # "_result":Z
    :sswitch_16
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v36

    .line 449
    .local v36, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 455
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_17
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 459
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 460
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I

    move-result v36

    .line 461
    .restart local v36    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 467
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":I
    :sswitch_18
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 472
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 478
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_19
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 482
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 485
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V

    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 491
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_1a
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isImsSmsSupported()Z

    move-result v36

    .line 493
    .local v36, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    if-eqz v36, :cond_15

    const/4 v2, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 494
    :cond_15
    const/4 v2, 0x0

    goto :goto_16

    .line 499
    .end local v36    # "_result":Z
    :sswitch_1b
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 502
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->isImsSmsSupportedForSubscriber(I)Z

    move-result v36

    .line 503
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v36, :cond_16

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 504
    :cond_16
    const/4 v2, 0x0

    goto :goto_17

    .line 509
    .end local v3    # "_arg0":I
    .end local v36    # "_result":Z
    :sswitch_1c
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 512
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->isSmsSimPickActivityNeeded(I)Z

    move-result v36

    .line 513
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v36, :cond_17

    const/4 v2, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 514
    :cond_17
    const/4 v2, 0x0

    goto :goto_18

    .line 519
    .end local v3    # "_arg0":I
    .end local v36    # "_result":Z
    :sswitch_1d
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getPreferredSmsSubscription()I

    move-result v36

    .line 521
    .local v36, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 527
    .end local v36    # "_result":I
    :sswitch_1e
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v36

    .line 529
    .local v36, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 531
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 535
    .end local v36    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 538
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;

    move-result-object v36

    .line 539
    .restart local v36    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 545
    .end local v3    # "_arg0":I
    .end local v36    # "_result":Ljava/lang/String;
    :sswitch_20
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isSMSPromptEnabled()Z

    move-result v36

    .line 547
    .local v36, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v36, :cond_18

    const/4 v2, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 548
    :cond_18
    const/4 v2, 0x0

    goto :goto_19

    .line 553
    .end local v36    # "_result":Z
    :sswitch_21
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 557
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 559
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    .line 560
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 566
    .local v5, "_arg2":Landroid/net/Uri;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 568
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 569
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 575
    .local v7, "_arg4":Landroid/app/PendingIntent;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 576
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    :goto_1c
    move-object/from16 v2, p0

    .line 581
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 563
    .end local v5    # "_arg2":Landroid/net/Uri;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    :cond_19
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/net/Uri;
    goto :goto_1a

    .line 572
    .restart local v6    # "_arg3":Ljava/lang/String;
    :cond_1a
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_1b

    .line 579
    :cond_1b
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_1c

    .line 587
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/net/Uri;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_22
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 591
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 593
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    .line 594
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 600
    .restart local v5    # "_arg2":Landroid/net/Uri;
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 602
    .restart local v6    # "_arg3":Ljava/lang/String;
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    .line 604
    .restart local v16    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .restart local v17    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v26, p0

    move/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v16

    move-object/from16 v32, v17

    .line 605
    invoke-virtual/range {v26 .. v32}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 597
    .end local v5    # "_arg2":Landroid/net/Uri;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v17    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :cond_1c
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/net/Uri;
    goto :goto_1d

    .line 611
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/net/Uri;
    :sswitch_23
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 615
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 617
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 618
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEfByModeForSubscriber(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v37

    .line 619
    .restart local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 621
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 625
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_24
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 629
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 631
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 633
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 635
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v23

    .line 637
    .restart local v23    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 639
    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    .local v34, "_arg6":J
    move-object/from16 v27, p0

    move/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v23

    move/from16 v33, v8

    .line 640
    invoke-virtual/range {v27 .. v35}, Lcom/android/internal/telephony/ISms$Stub;->copyTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v36

    .line 641
    .local v36, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 647
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg5":I
    .end local v23    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "_arg6":J
    .end local v36    # "_result":I
    :sswitch_25
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 651
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 653
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 655
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 657
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 659
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 661
    .restart local v8    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 663
    .local v9, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1d

    .line 664
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 670
    .restart local v10    # "_arg7":Landroid/app/PendingIntent;
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 671
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .local v11, "_arg8":Landroid/app/PendingIntent;
    :goto_1f
    move-object/from16 v2, p0

    .line 676
    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->sendDataWithOriginalPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 667
    .end local v10    # "_arg7":Landroid/app/PendingIntent;
    .end local v11    # "_arg8":Landroid/app/PendingIntent;
    :cond_1d
    const/4 v10, 0x0

    .restart local v10    # "_arg7":Landroid/app/PendingIntent;
    goto :goto_1e

    .line 674
    :cond_1e
    const/4 v11, 0x0

    .restart local v11    # "_arg8":Landroid/app/PendingIntent;
    goto :goto_1f

    .line 682
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":[B
    .end local v10    # "_arg7":Landroid/app/PendingIntent;
    .end local v11    # "_arg8":Landroid/app/PendingIntent;
    :sswitch_26
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 685
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->isSmsReadyForSubscriber(I)Z

    move-result v36

    .line 686
    .local v36, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    if-eqz v36, :cond_1f

    const/4 v2, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 687
    :cond_1f
    const/4 v2, 0x0

    goto :goto_20

    .line 692
    .end local v3    # "_arg0":I
    .end local v36    # "_result":Z
    :sswitch_27
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 696
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x1

    .line 697
    .local v4, "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->setSmsMemoryStatusForSubscriber(IZ)V

    .line 698
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 696
    .end local v4    # "_arg1":Z
    :cond_20
    const/4 v4, 0x0

    goto :goto_21

    .line 703
    .end local v3    # "_arg0":I
    :sswitch_28
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 707
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 708
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->getSmsSimMemoryStatusForSubscriber(ILjava/lang/String;)Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    move-result-object v36

    .line 709
    .local v36, "_result":Lcom/mediatek/internal/telephony/IccSmsStorageStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    if-eqz v36, :cond_21

    .line 711
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/4 v2, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 717
    :goto_22
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 715
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 721
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":Lcom/mediatek/internal/telephony/IccSmsStorageStatus;
    :sswitch_29
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 725
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 727
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 729
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 731
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 733
    .local v7, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 735
    .restart local v8    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22

    .line 736
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 742
    .local v9, "_arg6":Landroid/app/PendingIntent;
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_23

    .line 743
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .restart local v10    # "_arg7":Landroid/app/PendingIntent;
    :goto_24
    move-object/from16 v2, p0

    .line 748
    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/ISms$Stub;->sendTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 739
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    .end local v10    # "_arg7":Landroid/app/PendingIntent;
    :cond_22
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_23

    .line 746
    :cond_23
    const/4 v10, 0x0

    .restart local v10    # "_arg7":Landroid/app/PendingIntent;
    goto :goto_24

    .line 754
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    .end local v10    # "_arg7":Landroid/app/PendingIntent;
    :sswitch_2a
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 758
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 760
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 762
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 764
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v23

    .line 766
    .restart local v23    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 768
    .restart local v8    # "_arg5":I
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 770
    .restart local v25    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .local v26, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v18, p0

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v24, v8

    .line 771
    invoke-virtual/range {v18 .. v26}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;)V

    .line 772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 777
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg5":I
    .end local v23    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v26    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_2b
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 781
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 783
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 785
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 787
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v23

    .line 789
    .restart local v23    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 791
    .restart local v8    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    .restart local v34    # "_arg6":J
    move-object/from16 v27, p0

    move/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v23

    move/from16 v33, v8

    .line 792
    invoke-virtual/range {v27 .. v35}, Lcom/android/internal/telephony/ISms$Stub;->insertTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v36

    .line 793
    .local v36, "_result":Landroid/telephony/SimSmsInsertStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    if-eqz v36, :cond_24

    .line 795
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    const/4 v2, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SimSmsInsertStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 801
    :goto_25
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 799
    :cond_24
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 805
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg5":I
    .end local v23    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "_arg6":J
    .end local v36    # "_result":Landroid/telephony/SimSmsInsertStatus;
    :sswitch_2c
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 809
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 811
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 813
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 815
    .local v6, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .local v7, "_arg4":[B
    move-object/from16 v2, p0

    .line 816
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/ISms$Stub;->insertRawMessageToIccCardForSubscriber(ILjava/lang/String;I[B[B)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v36

    .line 817
    .restart local v36    # "_result":Landroid/telephony/SimSmsInsertStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    if-eqz v36, :cond_25

    .line 819
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    const/4 v2, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SimSmsInsertStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 825
    :goto_26
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 823
    :cond_25
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 829
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":[B
    .end local v7    # "_arg4":[B
    .end local v36    # "_result":Landroid/telephony/SimSmsInsertStatus;
    :sswitch_2d
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 833
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 835
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 837
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 839
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 841
    .local v7, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    .line 842
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 848
    .local v8, "_arg5":Landroid/os/Bundle;
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_27

    .line 849
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 855
    .restart local v9    # "_arg6":Landroid/app/PendingIntent;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    .line 856
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .restart local v10    # "_arg7":Landroid/app/PendingIntent;
    :goto_29
    move-object/from16 v2, p0

    .line 861
    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/ISms$Stub;->sendTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 862
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 845
    .end local v8    # "_arg5":Landroid/os/Bundle;
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    .end local v10    # "_arg7":Landroid/app/PendingIntent;
    :cond_26
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/os/Bundle;
    goto :goto_27

    .line 852
    :cond_27
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_28

    .line 859
    :cond_28
    const/4 v10, 0x0

    .restart local v10    # "_arg7":Landroid/app/PendingIntent;
    goto :goto_29

    .line 867
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Landroid/os/Bundle;
    .end local v9    # "_arg6":Landroid/app/PendingIntent;
    .end local v10    # "_arg7":Landroid/app/PendingIntent;
    :sswitch_2e
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 871
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 873
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 875
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 877
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v23

    .line 879
    .restart local v23    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_29

    .line 880
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 886
    .restart local v8    # "_arg5":Landroid/os/Bundle;
    :goto_2a
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 888
    .restart local v25    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .restart local v26    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v18, p0

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v8

    .line 889
    invoke-virtual/range {v18 .. v26}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;)V

    .line 890
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 883
    .end local v8    # "_arg5":Landroid/os/Bundle;
    .end local v25    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v26    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :cond_29
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/os/Bundle;
    goto :goto_2a

    .line 895
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg5":Landroid/os/Bundle;
    .end local v23    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2f
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 899
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 900
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->getSmsParametersForSubscriber(ILjava/lang/String;)Landroid/telephony/SmsParameters;

    move-result-object v36

    .line 901
    .local v36, "_result":Landroid/telephony/SmsParameters;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    if-eqz v36, :cond_2a

    .line 903
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    const/4 v2, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SmsParameters;->writeToParcel(Landroid/os/Parcel;I)V

    .line 909
    :goto_2b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 907
    :cond_2a
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 913
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v36    # "_result":Landroid/telephony/SmsParameters;
    :sswitch_30
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 917
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 919
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b

    .line 920
    sget-object v2, Landroid/telephony/SmsParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SmsParameters;

    .line 925
    .local v5, "_arg2":Landroid/telephony/SmsParameters;
    :goto_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISms$Stub;->setSmsParametersForSubscriber(ILjava/lang/String;Landroid/telephony/SmsParameters;)Z

    move-result v36

    .line 926
    .local v36, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    if-eqz v36, :cond_2c

    const/4 v2, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 923
    .end local v5    # "_arg2":Landroid/telephony/SmsParameters;
    .end local v36    # "_result":Z
    :cond_2b
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/telephony/SmsParameters;
    goto :goto_2c

    .line 927
    .restart local v36    # "_result":Z
    :cond_2c
    const/4 v2, 0x0

    goto :goto_2d

    .line 932
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/telephony/SmsParameters;
    .end local v36    # "_result":Z
    :sswitch_31
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 936
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 938
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 939
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISms$Stub;->getMessageFromIccEfForSubscriber(ILjava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;

    move-result-object v36

    .line 940
    .local v36, "_result":Lcom/android/internal/telephony/SmsRawData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    if-eqz v36, :cond_2d

    .line 942
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    const/4 v2, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SmsRawData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 948
    :goto_2e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 946
    :cond_2d
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    .line 952
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v36    # "_result":Lcom/android/internal/telephony/SmsRawData;
    :sswitch_32
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 955
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->getCellBroadcastSmsConfigForSubscriber(I)[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    move-result-object v36

    .line 956
    .local v36, "_result":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 958
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 962
    .end local v3    # "_arg0":I
    .end local v36    # "_result":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    :sswitch_33
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 966
    .restart local v3    # "_arg0":I
    sget-object v2, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    .line 968
    .local v4, "_arg1":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    sget-object v2, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    .line 969
    .local v5, "_arg2":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISms$Stub;->setCellBroadcastSmsConfigForSubscriber(I[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;)Z

    move-result v36

    .line 970
    .local v36, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    if-eqz v36, :cond_2e

    const/4 v2, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 971
    :cond_2e
    const/4 v2, 0x0

    goto :goto_2f

    .line 976
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .end local v5    # "_arg2":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .end local v36    # "_result":Z
    :sswitch_34
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 979
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->queryCellBroadcastSmsActivationForSubscriber(I)Z

    move-result v36

    .line 980
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    if-eqz v36, :cond_2f

    const/4 v2, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 981
    :cond_2f
    const/4 v2, 0x0

    goto :goto_30

    .line 986
    .end local v3    # "_arg0":I
    .end local v36    # "_result":Z
    :sswitch_35
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 990
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30

    const/4 v4, 0x1

    .line 991
    .local v4, "_arg1":Z
    :goto_31
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->activateCellBroadcastSmsForSubscriber(IZ)Z

    move-result v36

    .line 992
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    if-eqz v36, :cond_31

    const/4 v2, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 990
    .end local v4    # "_arg1":Z
    .end local v36    # "_result":Z
    :cond_30
    const/4 v4, 0x0

    goto :goto_31

    .line 993
    .restart local v4    # "_arg1":Z
    .restart local v36    # "_result":Z
    :cond_31
    const/4 v2, 0x0

    goto :goto_32

    .line 998
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Z
    .end local v36    # "_result":Z
    :sswitch_36
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1002
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1004
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1005
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISms$Stub;->removeCellBroadcastMsgForSubscriber(III)Z

    move-result v36

    .line 1006
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    if-eqz v36, :cond_32

    const/4 v2, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1007
    :cond_32
    const/4 v2, 0x0

    goto :goto_33

    .line 1012
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v36    # "_result":Z
    :sswitch_37
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1016
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1017
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->setEtwsConfigForSubscriber(II)Z

    move-result v36

    .line 1018
    .restart local v36    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    if-eqz v36, :cond_33

    const/4 v2, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1019
    :cond_33
    const/4 v2, 0x0

    goto :goto_34

    .line 52
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
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
