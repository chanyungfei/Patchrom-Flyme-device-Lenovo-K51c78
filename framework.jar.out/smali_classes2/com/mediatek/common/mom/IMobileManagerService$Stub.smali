.class public abstract Lcom/mediatek/common/mom/IMobileManagerService$Stub;
.super Landroid/os/Binder;
.source "IMobileManagerService.java"

# interfaces
.implements Lcom/mediatek/common/mom/IMobileManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/mom/IMobileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/mom/IMobileManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.mom.IMobileManagerService"

.field static final TRANSACTION_attach:I = 0x3

.field static final TRANSACTION_cancelNotification:I = 0x20

.field static final TRANSACTION_checkPermission:I = 0x10

.field static final TRANSACTION_checkPermissionAsync:I = 0x11

.field static final TRANSACTION_checkPermissionAsyncWithData:I = 0x13

.field static final TRANSACTION_checkPermissionWithData:I = 0x12

.field static final TRANSACTION_clearAllSettings:I = 0x5

.field static final TRANSACTION_clearPackageSettings:I = 0x6

.field static final TRANSACTION_deletePackage:I = 0x1f

.field static final TRANSACTION_detach:I = 0x4

.field static final TRANSACTION_enableInterceptionController:I = 0x24

.field static final TRANSACTION_enablePermissionController:I = 0xa

.field static final TRANSACTION_filterReceiver:I = 0x1a

.field static final TRANSACTION_forceStopPackage:I = 0x1d

.field static final TRANSACTION_getBootReceiverEnabledSetting:I = 0x19

.field static final TRANSACTION_getBootReceiverList:I = 0x16

.field static final TRANSACTION_getInstalledPackages:I = 0xb

.field static final TRANSACTION_getInterceptionEnabledSetting:I = 0x25

.field static final TRANSACTION_getNotificationEnabledSetting:I = 0x22

.field static final TRANSACTION_getPackageGrantedPermissions:I = 0xc

.field static final TRANSACTION_getParentPermission:I = 0x14

.field static final TRANSACTION_getUserConfirmTime:I = 0x15

.field static final TRANSACTION_getVersionName:I = 0x2

.field static final TRANSACTION_installPackage:I = 0x1e

.field static final TRANSACTION_registerManagerApListener:I = 0x7

.field static final TRANSACTION_setBootReceiverEnabledSetting:I = 0x18

.field static final TRANSACTION_setBootReceiverEnabledSettings:I = 0x17

.field static final TRANSACTION_setFirewallPolicy:I = 0x26

.field static final TRANSACTION_setNotificationCache:I = 0x23

.field static final TRANSACTION_setNotificationEnabledSetting:I = 0x21

.field static final TRANSACTION_setPermissionCache:I = 0xf

.field static final TRANSACTION_setPermissionRecord:I = 0xd

.field static final TRANSACTION_setPermissionRecords:I = 0xe

.field static final TRANSACTION_startMonitorBootReceiver:I = 0x1b

.field static final TRANSACTION_stopMonitorBootReceiver:I = 0x1c

.field static final TRANSACTION_systemReady:I = 0x1

.field static final TRANSACTION_triggerManagerApListener:I = 0x8

.field static final TRANSACTION_triggerManagerApListenerAsync:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;
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
    const-string v1, "com.mediatek.common.mom.IMobileManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/mom/IMobileManagerService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/mediatek/common/mom/IMobileManagerService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/mediatek/common/mom/IMobileManagerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 17
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

    .line 468
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v16

    :goto_0
    return v16

    .line 43
    :sswitch_0
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v16, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->systemReady()V

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    const/16 v16, 0x1

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getVersionName()Ljava/lang/String;

    move-result-object v12

    .line 57
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    const/16 v16, 0x1

    goto :goto_0

    .line 63
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/mediatek/common/mom/IMobileConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileConnectionCallback;

    move-result-object v2

    .line 66
    .local v2, "_arg0":Lcom/mediatek/common/mom/IMobileConnectionCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->attach(Lcom/mediatek/common/mom/IMobileConnectionCallback;)Z

    move-result v12

    .line 67
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v12, :cond_0

    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    const/16 v16, 0x1

    goto :goto_0

    .line 68
    :cond_0
    const/16 v16, 0x0

    goto :goto_1

    .line 73
    .end local v2    # "_arg0":Lcom/mediatek/common/mom/IMobileConnectionCallback;
    .end local v12    # "_result":Z
    :sswitch_4
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->detach()V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/16 v16, 0x1

    goto :goto_0

    .line 80
    :sswitch_5
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->clearAllSettings()V

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 87
    :sswitch_6
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->clearPackageSettings(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 96
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 101
    .local v6, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->registerManagerApListener(ILandroid/os/IBinder;)V

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 107
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Landroid/os/IBinder;
    :sswitch_8
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_1

    .line 112
    sget-object v16, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 118
    .local v6, "_arg1":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 119
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v9}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->triggerManagerApListener(ILandroid/os/Bundle;I)I

    move-result v12

    .line 120
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 115
    .end local v6    # "_arg1":Landroid/os/Bundle;
    .end local v9    # "_arg2":I
    .end local v12    # "_result":I
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/os/Bundle;
    goto :goto_2

    .line 126
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Landroid/os/Bundle;
    :sswitch_9
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_2

    .line 131
    sget-object v16, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 137
    .restart local v6    # "_arg1":Landroid/os/Bundle;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 139
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 140
    .local v10, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v9, v10}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->triggerManagerApListenerAsync(ILandroid/os/Bundle;ILandroid/os/IBinder;)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 134
    .end local v6    # "_arg1":Landroid/os/Bundle;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Landroid/os/IBinder;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/os/Bundle;
    goto :goto_3

    .line 146
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Landroid/os/Bundle;
    :sswitch_a
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_3

    const/4 v2, 0x1

    .line 149
    .local v2, "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->enablePermissionController(Z)V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 148
    .end local v2    # "_arg0":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 155
    :sswitch_b
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getInstalledPackages()Ljava/util/List;

    move-result-object v11

    .line 157
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 159
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 163
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_c
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getPackageGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 167
    .local v14, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 169
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 173
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    :sswitch_d
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_4

    .line 176
    sget-object v16, Lcom/mediatek/common/mom/PermissionRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/mom/PermissionRecord;

    .line 181
    .local v2, "_arg0":Lcom/mediatek/common/mom/PermissionRecord;
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setPermissionRecord(Lcom/mediatek/common/mom/PermissionRecord;)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 179
    .end local v2    # "_arg0":Lcom/mediatek/common/mom/PermissionRecord;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/mediatek/common/mom/PermissionRecord;
    goto :goto_5

    .line 187
    .end local v2    # "_arg0":Lcom/mediatek/common/mom/PermissionRecord;
    :sswitch_e
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    sget-object v16, Lcom/mediatek/common/mom/PermissionRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 190
    .local v4, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setPermissionRecords(Ljava/util/List;)V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 196
    .end local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :sswitch_f
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    sget-object v16, Lcom/mediatek/common/mom/PermissionRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 199
    .restart local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setPermissionCache(Ljava/util/List;)V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 205
    .end local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :sswitch_10
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 210
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->checkPermission(Ljava/lang/String;I)I

    move-result v12

    .line 211
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 217
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v12    # "_result":I
    :sswitch_11
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 223
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IRequestedPermissionCallback;

    move-result-object v9

    .line 224
    .local v9, "_arg2":Lcom/mediatek/common/mom/IRequestedPermissionCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v9}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->checkPermissionAsync(Ljava/lang/String;ILcom/mediatek/common/mom/IRequestedPermissionCallback;)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 230
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v9    # "_arg2":Lcom/mediatek/common/mom/IRequestedPermissionCallback;
    :sswitch_12
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 236
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_5

    .line 237
    sget-object v16, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 242
    .local v9, "_arg2":Landroid/os/Bundle;
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v9}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->checkPermissionWithData(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v12

    .line 243
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 240
    .end local v9    # "_arg2":Landroid/os/Bundle;
    .end local v12    # "_result":I
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/os/Bundle;
    goto :goto_6

    .line 249
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v9    # "_arg2":Landroid/os/Bundle;
    :sswitch_13
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 255
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_6

    .line 256
    sget-object v16, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 262
    .restart local v9    # "_arg2":Landroid/os/Bundle;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IRequestedPermissionCallback;

    move-result-object v10

    .line 263
    .local v10, "_arg3":Lcom/mediatek/common/mom/IRequestedPermissionCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v9, v10}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->checkPermissionAsyncWithData(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 259
    .end local v9    # "_arg2":Landroid/os/Bundle;
    .end local v10    # "_arg3":Lcom/mediatek/common/mom/IRequestedPermissionCallback;
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/os/Bundle;
    goto :goto_7

    .line 269
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v9    # "_arg2":Landroid/os/Bundle;
    :sswitch_14
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getParentPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 273
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 279
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 283
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 284
    .local v6, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getUserConfirmTime(IJ)J

    move-result-wide v12

    .line 285
    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 287
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 291
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v12    # "_result":J
    :sswitch_16
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getBootReceiverList()Ljava/util/List;

    move-result-object v15

    .line 293
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/ReceiverRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 295
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 299
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/ReceiverRecord;>;"
    :sswitch_17
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    sget-object v16, Lcom/mediatek/common/mom/ReceiverRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    .line 302
    .local v5, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/ReceiverRecord;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setBootReceiverEnabledSettings(Ljava/util/List;)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 308
    .end local v5    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/ReceiverRecord;>;"
    :sswitch_18
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_7

    const/4 v6, 0x1

    .line 313
    .local v6, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setBootReceiverEnabledSetting(Ljava/lang/String;Z)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 312
    .end local v6    # "_arg1":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_8

    .line 319
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getBootReceiverEnabledSetting(Ljava/lang/String;)Z

    move-result v12

    .line 323
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v12, :cond_8

    const/16 v16, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 324
    :cond_8
    const/16 v16, 0x0

    goto :goto_9

    .line 329
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_1a
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_9

    .line 332
    sget-object v16, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 338
    .local v2, "_arg0":Landroid/content/Intent;
    :goto_a
    sget-object v16, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 340
    .local v8, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 341
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->filterReceiver(Landroid/content/Intent;Ljava/util/List;I)V

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 344
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 335
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v8    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "_arg2":I
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/Intent;
    goto :goto_a

    .line 348
    .end local v2    # "_arg0":Landroid/content/Intent;
    :sswitch_1b
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->startMonitorBootReceiver(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 357
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_1c
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 360
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->stopMonitorBootReceiver(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 366
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 369
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->forceStopPackage(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 375
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_1e
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_a

    .line 378
    sget-object v16, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 384
    .local v2, "_arg0":Landroid/net/Uri;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/mediatek/common/mom/IPackageInstallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IPackageInstallCallback;

    move-result-object v6

    .line 385
    .local v6, "_arg1":Lcom/mediatek/common/mom/IPackageInstallCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->installPackage(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 381
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v6    # "_arg1":Lcom/mediatek/common/mom/IPackageInstallCallback;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/Uri;
    goto :goto_b

    .line 391
    .end local v2    # "_arg0":Landroid/net/Uri;
    :sswitch_1f
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->deletePackage(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 400
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_20
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 403
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->cancelNotification(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 409
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_21
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_b

    const/4 v6, 0x1

    .line 414
    .local v6, "_arg1":Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setNotificationEnabledSetting(Ljava/lang/String;Z)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 413
    .end local v6    # "_arg1":Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_c

    .line 420
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_22
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getNotificationEnabledSetting(Ljava/lang/String;)Z

    move-result v12

    .line 424
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v12, :cond_c

    const/16 v16, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 425
    :cond_c
    const/16 v16, 0x0

    goto :goto_d

    .line 430
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_23
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    sget-object v16, Lcom/mediatek/common/mom/NotificationCacheRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 433
    .local v3, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/NotificationCacheRecord;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setNotificationCache(Ljava/util/List;)V

    .line 434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 439
    .end local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/NotificationCacheRecord;>;"
    :sswitch_24
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_d

    const/4 v2, 0x1

    .line 442
    .local v2, "_arg0":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->enableInterceptionController(Z)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 441
    .end local v2    # "_arg0":Z
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 448
    :sswitch_25
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getInterceptionEnabledSetting()Z

    move-result v12

    .line 450
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    if-eqz v12, :cond_e

    const/16 v16, 0x1

    :goto_f
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 451
    :cond_e
    const/16 v16, 0x0

    goto :goto_f

    .line 456
    .end local v12    # "_result":Z
    :sswitch_26
    const-string v16, "com.mediatek.common.mom.IMobileManagerService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 460
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 462
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_f

    const/4 v9, 0x1

    .line 463
    .local v9, "_arg2":Z
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v9}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setFirewallPolicy(IIZ)V

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 462
    .end local v9    # "_arg2":Z
    :cond_f
    const/4 v9, 0x0

    goto :goto_10

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
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
