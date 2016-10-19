.class public abstract Lcom/android/internal/app/IAppPcService$Stub;
.super Landroid/os/Binder;
.source "IAppPcService.java"

# interfaces
.implements Lcom/android/internal/app/IAppPcService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppPcService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IAppPcService"

.field static final TRANSACTION_addBlockedCallLog:I = 0x10

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0xd

.field static final TRANSACTION_checkAppLock:I = 0x6

.field static final TRANSACTION_checkAutoStart:I = 0x4

.field static final TRANSACTION_checkIncomingCall:I = 0x16

.field static final TRANSACTION_checkMMSPushIntent:I = 0x12

.field static final TRANSACTION_checkNetworkPrompt:I = 0x5

.field static final TRANSACTION_checkOperation:I = 0x2

.field static final TRANSACTION_checkOperationAsync:I = 0x3

.field static final TRANSACTION_checkSMSIntent:I = 0x11

.field static final TRANSACTION_clearCheckHistorys:I = 0x15

.field static final TRANSACTION_getCheckHistorys:I = 0x14

.field static final TRANSACTION_inWhiteList:I = 0x1

.field static final TRANSACTION_isBlacklistNumber:I = 0xf

.field static final TRANSACTION_maybeNetworkBlock:I = 0xe

.field static final TRANSACTION_pmInstallApk:I = 0x13

.field static final TRANSACTION_pmInstallApkWithCode:I = 0x17

.field static final TRANSACTION_sendOrderedBroadcastAsUser:I = 0x9

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x8

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0xa

.field static final TRANSACTION_setUidPolicy:I = 0xb

.field static final TRANSACTION_startActivityForResult:I = 0xc

.field static final TRANSACTION_stopService:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.app.IAppPcService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IAppPcService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppPcService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.android.internal.app.IAppPcService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IAppPcService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/app/IAppPcService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/internal/app/IAppPcService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/app/IAppPcService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 429
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 51
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 55
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 56
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/app/IAppPcService$Stub;->inWhiteList(ILjava/lang/String;II)Z

    move-result v10

    .line 57
    .local v10, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v10, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 63
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v10    # "_result":Z
    :sswitch_2
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 67
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 69
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 71
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppPcCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppPcCallback;

    move-result-object v6

    .line 72
    .local v6, "_arg3":Lcom/android/internal/app/IAppPcCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/app/IAppPcService$Stub;->checkOperation(IIILcom/android/internal/app/IAppPcCallback;)I

    move-result v10

    .line 73
    .local v10, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v2, 0x1

    goto :goto_0

    .line 79
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Lcom/android/internal/app/IAppPcCallback;
    .end local v10    # "_result":I
    :sswitch_3
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 83
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 87
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 88
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/app/IAppPcService$Stub;->checkOperationAsync(ILjava/lang/String;II)Z

    move-result v10

    .line 89
    .local v10, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v10, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 90
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 95
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v10    # "_result":Z
    :sswitch_4
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/IAppPcService$Stub;->checkAutoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 103
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v10, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 104
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 109
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_5
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    .line 118
    .local v3, "_arg0":Landroid/content/pm/ActivityInfo;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 124
    .local v4, "_arg1":Landroid/content/Intent;
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/IAppPcService$Stub;->checkNetworkPrompt(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 125
    .local v10, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v10, :cond_5

    .line 127
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 133
    :goto_6
    if-eqz v4, :cond_6

    .line 134
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 115
    .end local v3    # "_arg0":Landroid/content/pm/ActivityInfo;
    .end local v4    # "_arg1":Landroid/content/Intent;
    .end local v10    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/pm/ActivityInfo;
    goto :goto_4

    .line 122
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/Intent;
    goto :goto_5

    .line 131
    .restart local v10    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 138
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 144
    .end local v3    # "_arg0":Landroid/content/pm/ActivityInfo;
    .end local v4    # "_arg1":Landroid/content/Intent;
    .end local v10    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_6
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 150
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 152
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 153
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 158
    .local v6, "_arg3":Landroid/os/Bundle;
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/app/IAppPcService$Stub;->checkAppLock(Ljava/lang/String;IILandroid/os/Bundle;)Z

    move-result v10

    .line 159
    .local v10, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v10, :cond_8

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 156
    .end local v6    # "_arg3":Landroid/os/Bundle;
    .end local v10    # "_result":Z
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Landroid/os/Bundle;
    goto :goto_8

    .line 160
    .restart local v10    # "_result":Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 165
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/os/Bundle;
    .end local v10    # "_result":Z
    :sswitch_7
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 168
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 173
    .local v3, "_arg0":Landroid/content/Intent;
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->stopService(Landroid/content/Intent;)Z

    move-result v10

    .line 174
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v10, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 171
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/Intent;
    goto :goto_a

    .line 175
    .restart local v10    # "_result":Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 180
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :sswitch_8
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 186
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 187
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/IAppPcService$Stub;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 193
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_9
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 196
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 202
    .local v3, "_arg0":Landroid/content/Intent;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 203
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 209
    .local v4, "_arg1":Landroid/os/UserHandle;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppPcOrderedBroadcastCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    move-result-object v6

    .line 213
    .local v6, "_arg3":Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 215
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 218
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .local v9, "_arg6":Landroid/os/Bundle;
    :goto_e
    move-object/from16 v2, p0

    .line 223
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/app/IAppPcService$Stub;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 199
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v4    # "_arg1":Landroid/os/UserHandle;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Landroid/os/Bundle;
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/Intent;
    goto :goto_c

    .line 206
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/UserHandle;
    goto :goto_d

    .line 221
    .restart local v5    # "_arg2":Ljava/lang/String;
    .restart local v6    # "_arg3":Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    .restart local v7    # "_arg4":I
    .restart local v8    # "_arg5":Ljava/lang/String;
    :cond_d
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/os/Bundle;
    goto :goto_e

    .line 229
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v4    # "_arg1":Landroid/os/UserHandle;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Landroid/os/Bundle;
    :sswitch_a
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 235
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v5, 0x1

    .line 236
    .local v5, "_arg2":Z
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/IAppPcService$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 235
    .end local v5    # "_arg2":Z
    :cond_e
    const/4 v5, 0x0

    goto :goto_f

    .line 242
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_b
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 246
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 247
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/IAppPcService$Stub;->setUidPolicy(II)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 253
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_c
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    .line 256
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 262
    .local v3, "_arg0":Landroid/content/Intent;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 263
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/IAppPcService$Stub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 259
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v4    # "_arg1":I
    :cond_f
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/Intent;
    goto :goto_10

    .line 269
    .end local v3    # "_arg0":Landroid/content/Intent;
    :sswitch_d
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 274
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/IAppPcService$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v10

    .line 275
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v10, :cond_10

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 276
    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    .line 281
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_e
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 284
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->maybeNetworkBlock(I)V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 290
    .end local v3    # "_arg0":I
    :sswitch_f
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->isBlacklistNumber(Ljava/lang/String;)Z

    move-result v10

    .line 294
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v10, :cond_11

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 295
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .line 300
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_10
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 304
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 306
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 308
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg4":Ljava/lang/String;
    move-object/from16 v11, p0

    move-object v12, v3

    move v13, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .line 311
    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/app/IAppPcService$Stub;->addBlockedCallLog(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 317
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v14    # "_arg2":J
    :sswitch_11
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    .line 320
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 325
    .local v3, "_arg0":Landroid/content/Intent;
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->checkSMSIntent(Landroid/content/Intent;)Z

    move-result v10

    .line 326
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v10, :cond_13

    const/4 v2, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    if-eqz v3, :cond_14

    .line 329
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 335
    :goto_15
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 323
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :cond_12
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/Intent;
    goto :goto_13

    .line 327
    .restart local v10    # "_result":Z
    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .line 333
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 339
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :sswitch_12
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    .line 344
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 349
    .local v4, "_arg1":Landroid/content/Intent;
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/IAppPcService$Stub;->checkMMSPushIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v10

    .line 350
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    if-eqz v10, :cond_16

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    if-eqz v4, :cond_17

    .line 353
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 359
    :goto_18
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 347
    .end local v4    # "_arg1":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :cond_15
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/Intent;
    goto :goto_16

    .line 351
    .restart local v10    # "_result":Z
    :cond_16
    const/4 v2, 0x0

    goto :goto_17

    .line 357
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 363
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :sswitch_13
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 367
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 369
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/IAppPcService$Stub;->pmInstallApk(IILjava/lang/String;)I

    move-result v10

    .line 371
    .local v10, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 377
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_14
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IAppPcService$Stub;->getCheckHistorys()Ljava/util/List;

    move-result-object v18

    .line 379
    .local v18, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 381
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 385
    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :sswitch_15
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->clearCheckHistorys(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 394
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    .line 397
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 402
    .local v3, "_arg0":Landroid/content/Intent;
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->checkIncomingCall(Landroid/content/Intent;)Z

    move-result v10

    .line 403
    .local v10, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    if-eqz v10, :cond_19

    const/4 v2, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    if-eqz v3, :cond_1a

    .line 406
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 412
    :goto_1b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 400
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :cond_18
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/Intent;
    goto :goto_19

    .line 404
    .restart local v10    # "_result":Z
    :cond_19
    const/4 v2, 0x0

    goto :goto_1a

    .line 410
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 416
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :sswitch_17
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 420
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 422
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 423
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/IAppPcService$Stub;->pmInstallApkWithCode(IILjava/lang/String;)I

    move-result v10

    .line 424
    .local v10, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 38
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
