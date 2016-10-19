.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 2604
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 124
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 73
    if-nez p0, :cond_1

    .line 74
    const/4 v0, 0x0

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 78
    .local v0, "in":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0    # "in":Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    move v12, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 99
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 2601
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 266
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
    .line 130
    move/from16 v0, p1

    sparse-switch v0, :sswitch_data_0

    .line 2597
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 134
    :sswitch_0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/datamining/avatar/system/IAppExceptionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;

    move-result-object v207

    .line 139
    .local v207, "observer":Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerAppExceptionListener(Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v6, 0x1

    goto :goto_0

    .line 147
    .end local v207    # "observer":Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;
    :sswitch_1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;

    move-result-object v207

    .line 152
    .local v207, "observer":Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerSystemCollectorListener(Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v6, 0x1

    goto :goto_0

    .line 158
    .end local v207    # "observer":Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;
    :sswitch_2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v141

    .line 161
    .local v141, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v188

    .line 162
    .local v188, "label":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v259, v0

    .line 163
    .local v259, "value":I
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v198

    check-cast v198, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    .line 166
    .local v198, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    move-object/from16 v0, p0

    move-object/from16 v1, v141

    move-object/from16 v2, v188

    move/from16 v3, v259

    move-object/from16 v4, v198

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v6, 0x1

    goto :goto_0

    .line 174
    .end local v141    # "action":Ljava/lang/String;
    .end local v188    # "label":Ljava/lang/String;
    .end local v198    # "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    .end local v259    # "value":I
    :sswitch_3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 176
    .local v150, "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 177
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 179
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 180
    .local v10, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 181
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 182
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 183
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 184
    .local v14, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 186
    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v6, p0

    .line 188
    invoke-virtual/range {v6 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v232

    .line 190
    .local v232, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    move-object/from16 v0, p3

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 184
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v232    # "result":I
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 186
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    .line 197
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v219

    .line 199
    .local v219, "pkgs":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IAppStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAppStateListener;

    move-result-object v207

    .line 201
    .local v207, "observer":Landroid/app/IAppStateListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v219

    move-object/from16 v2, v207

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->registerAppStateListener([Ljava/lang/String;Landroid/app/IAppStateListener;)V

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 209
    .end local v207    # "observer":Landroid/app/IAppStateListener;
    .end local v219    # "pkgs":[Ljava/lang/String;
    :sswitch_5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 211
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 212
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 213
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 214
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 215
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 216
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 217
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 218
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 219
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 221
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 223
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v6, p0

    .line 224
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v232

    .line 226
    .restart local v232    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    move-object/from16 v0, p3

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 219
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v232    # "result":I
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    .line 221
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    .line 233
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 235
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 236
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 237
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 238
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 239
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 240
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 241
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 242
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 243
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 245
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 247
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 248
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v232

    .line 250
    .restart local v232    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    move-object/from16 v0, p3

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 243
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v232    # "result":I
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 245
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    .line 257
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 259
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 260
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 261
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 262
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 263
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 264
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 265
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 266
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 267
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 269
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 271
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 272
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v232

    .line 274
    .local v232, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v6, 0x0

    move-object/from16 v0, v232

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 276
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 267
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v232    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_6
    const/4 v15, 0x0

    goto :goto_7

    .line 269
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_7
    const/16 v16, 0x0

    goto :goto_8

    .line 281
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 283
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 284
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 285
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 286
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 287
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 288
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 289
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 290
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 291
    .restart local v14    # "startFlags":I
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 292
    .local v27, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 294
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v28, v16

    move/from16 v29, v17

    .line 295
    invoke-virtual/range {v18 .. v29}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v232

    .line 297
    .local v232, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    move-object/from16 v0, p3

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 292
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v232    # "result":I
    :cond_8
    const/16 v16, 0x0

    goto :goto_9

    .line 304
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 306
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 307
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/IntentSender;

    .line 308
    .local v9, "intent":Landroid/content/IntentSender;
    const/16 v31, 0x0

    .line 309
    .local v31, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 310
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "fillInIntent":Landroid/content/Intent;
    check-cast v31, Landroid/content/Intent;

    .line 312
    .restart local v31    # "fillInIntent":Landroid/content/Intent;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 313
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 314
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 315
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 316
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 317
    .local v36, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 318
    .local v37, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_a
    move-object/from16 v28, p0

    move-object/from16 v29, v7

    move-object/from16 v30, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move/from16 v35, v13

    move-object/from16 v38, v16

    .line 320
    invoke-virtual/range {v28 .. v38}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v232

    .line 323
    .restart local v232    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    move-object/from16 v0, p3

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 318
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v232    # "result":I
    :cond_a
    const/16 v16, 0x0

    goto :goto_a

    .line 330
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/IntentSender;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v31    # "fillInIntent":Landroid/content/Intent;
    .end local v36    # "flagsMask":I
    .end local v37    # "flagsValues":I
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 332
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 333
    .local v40, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 334
    .local v41, "callingUid":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 335
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 336
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v44

    .line 338
    .local v44, "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v45

    .line 340
    .local v45, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 341
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 343
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 345
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v38, p0

    move-object/from16 v39, v8

    move-object/from16 v42, v9

    move-object/from16 v43, v10

    move/from16 v46, v14

    move-object/from16 v47, v15

    move-object/from16 v48, v16

    move/from16 v49, v17

    .line 346
    invoke-virtual/range {v38 .. v49}, Landroid/app/ActivityManagerNative;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v232

    .line 348
    .restart local v232    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    move-object/from16 v0, p3

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 341
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v232    # "result":I
    :cond_b
    const/4 v15, 0x0

    goto :goto_b

    .line 343
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_c
    const/16 v16, 0x0

    goto :goto_c

    .line 355
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v40    # "callingPid":I
    .end local v41    # "callingUid":I
    .end local v44    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v45    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    :sswitch_b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v155

    .line 357
    .local v155, "callingActivity":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 358
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 360
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v155

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v232

    .line 361
    .local v232, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v232, :cond_e

    const/4 v6, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 358
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v232    # "result":Z
    :cond_d
    const/16 v16, 0x0

    goto :goto_d

    .line 362
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v232    # "result":Z
    :cond_e
    const/4 v6, 0x0

    goto :goto_e

    .line 368
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v155    # "callingActivity":Landroid/os/IBinder;
    .end local v232    # "result":Z
    :sswitch_c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v249

    .line 370
    .local v249, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_f

    const/16 v16, 0x0

    .line 371
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v249

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v232

    .line 372
    .local v232, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    move-object/from16 v0, p3

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 370
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v232    # "result":I
    :cond_f
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    goto :goto_f

    .line 378
    .end local v249    # "taskId":I
    :sswitch_d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 380
    .local v60, "token":Landroid/os/IBinder;
    const/16 v52, 0x0

    .line 381
    .local v52, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 382
    .local v51, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    .line 383
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    .end local v52    # "resultData":Landroid/content/Intent;
    check-cast v52, Landroid/content/Intent;

    .line 385
    .restart local v52    # "resultData":Landroid/content/Intent;
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    const/16 v172, 0x1

    .line 386
    .local v172, "finishTask":Z
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v51

    move-object/from16 v3, v52

    move/from16 v4, v172

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    move-result v230

    .line 387
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v230, :cond_12

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 385
    .end local v172    # "finishTask":Z
    .end local v230    # "res":Z
    :cond_11
    const/16 v172, 0x0

    goto :goto_10

    .line 388
    .restart local v172    # "finishTask":Z
    .restart local v230    # "res":Z
    :cond_12
    const/4 v6, 0x0

    goto :goto_11

    .line 393
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Landroid/content/Intent;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v172    # "finishTask":Z
    .end local v230    # "res":Z
    :sswitch_e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 395
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 396
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 397
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 403
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 405
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v230

    .line 406
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    if-eqz v230, :cond_13

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 407
    :cond_13
    const/4 v6, 0x0

    goto :goto_12

    .line 412
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":Z
    :sswitch_10
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v44

    .line 415
    .restart local v44    # "session":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 421
    .end local v44    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :sswitch_11
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 423
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v230

    .line 424
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v230, :cond_14

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 425
    :cond_14
    const/4 v6, 0x0

    goto :goto_13

    .line 430
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":Z
    :sswitch_12
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 432
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 438
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :sswitch_13
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 440
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v230

    .line 441
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v230, :cond_15

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 442
    :cond_15
    const/4 v6, 0x0

    goto :goto_14

    .line 448
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":Z
    :sswitch_14
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 450
    .restart local v150    # "b":Landroid/os/IBinder;
    if-eqz v150, :cond_16

    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 452
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 453
    .local v20, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 454
    if-eqz v150, :cond_17

    invoke-static/range {v150 .. v150}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 456
    .local v21, "rec":Landroid/content/IIntentReceiver;
    :goto_16
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/IntentFilter;

    .line 457
    .local v22, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 458
    .local v23, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move/from16 v24, v17

    .line 459
    invoke-virtual/range {v18 .. v24}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 460
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    if-eqz v9, :cond_18

    .line 462
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 467
    :goto_17
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 450
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v22    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "perm":Ljava/lang/String;
    :cond_16
    const/4 v7, 0x0

    goto :goto_15

    .line 454
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v20    # "packageName":Ljava/lang/String;
    :cond_17
    const/16 v21, 0x0

    goto :goto_16

    .line 465
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v21    # "rec":Landroid/content/IIntentReceiver;
    .restart local v22    # "filter":Landroid/content/IntentFilter;
    .restart local v23    # "perm":Ljava/lang/String;
    :cond_18
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 472
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v22    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "perm":Ljava/lang/String;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_15
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 474
    .restart local v150    # "b":Landroid/os/IBinder;
    if-nez v150, :cond_19

    .line 475
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 477
    :cond_19
    invoke-static/range {v150 .. v150}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 478
    .restart local v21    # "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 485
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_16
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 487
    .restart local v150    # "b":Landroid/os/IBinder;
    if-eqz v150, :cond_1a

    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 489
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_18
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 490
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 491
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 492
    if-eqz v150, :cond_1b

    invoke-static/range {v150 .. v150}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v11

    .line 494
    .local v11, "resultTo":Landroid/content/IIntentReceiver;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 495
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .line 496
    .local v52, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v53

    .line 497
    .local v53, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 498
    .restart local v23    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 499
    .local v55, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v56, 0x1

    .line 500
    .local v56, "serialized":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v57, 0x1

    .line 501
    .local v57, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v46, p0

    move-object/from16 v47, v7

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    move-object/from16 v50, v11

    move-object/from16 v54, v23

    move/from16 v58, v17

    .line 502
    invoke-virtual/range {v46 .. v58}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I

    move-result v230

    .line 505
    .local v230, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 487
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v17    # "userId":I
    .end local v23    # "perm":Ljava/lang/String;
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Ljava/lang/String;
    .end local v53    # "resultExtras":Landroid/os/Bundle;
    .end local v55    # "appOp":I
    .end local v56    # "serialized":Z
    .end local v57    # "sticky":Z
    .end local v230    # "res":I
    :cond_1a
    const/4 v7, 0x0

    goto :goto_18

    .line 492
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    :cond_1b
    const/4 v11, 0x0

    goto :goto_19

    .line 499
    .restart local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v23    # "perm":Ljava/lang/String;
    .restart local v51    # "resultCode":I
    .restart local v52    # "resultData":Ljava/lang/String;
    .restart local v53    # "resultExtras":Landroid/os/Bundle;
    .restart local v55    # "appOp":I
    :cond_1c
    const/16 v56, 0x0

    goto :goto_1a

    .line 500
    .restart local v56    # "serialized":Z
    :cond_1d
    const/16 v57, 0x0

    goto :goto_1b

    .line 512
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v23    # "perm":Ljava/lang/String;
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Ljava/lang/String;
    .end local v53    # "resultExtras":Landroid/os/Bundle;
    .end local v55    # "appOp":I
    .end local v56    # "serialized":Z
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_17
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 514
    .restart local v150    # "b":Landroid/os/IBinder;
    if-eqz v150, :cond_1e

    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 515
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_1c
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 516
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 517
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v9, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 514
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_1e
    const/4 v7, 0x0

    goto :goto_1c

    .line 523
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_18
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 525
    .local v50, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 526
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .line 527
    .restart local v52    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v53

    .line 528
    .restart local v53    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20

    const/16 v54, 0x1

    .line 529
    .local v54, "resultAbort":Z
    :goto_1d
    if-eqz v50, :cond_1f

    move-object/from16 v49, p0

    .line 530
    invoke-virtual/range {v49 .. v54}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 532
    :cond_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 528
    .end local v54    # "resultAbort":Z
    :cond_20
    const/16 v54, 0x0

    goto :goto_1d

    .line 537
    .end local v50    # "who":Landroid/os/IBinder;
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Ljava/lang/String;
    .end local v53    # "resultExtras":Landroid/os/Bundle;
    :sswitch_19
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 540
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_21

    .line 541
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 543
    :cond_21
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 548
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :sswitch_1a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 550
    .restart local v60    # "token":Landroid/os/IBinder;
    const/16 v27, 0x0

    .line 551
    .restart local v27    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    .line 552
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "config":Landroid/content/res/Configuration;
    check-cast v27, Landroid/content/res/Configuration;

    .line 554
    .restart local v27    # "config":Landroid/content/res/Configuration;
    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    const/16 v243, 0x1

    .line 555
    .local v243, "stopProfiling":Z
    :goto_1e
    if-eqz v60, :cond_23

    .line 556
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v27

    move/from16 v3, v243

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 558
    :cond_23
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 554
    .end local v243    # "stopProfiling":Z
    :cond_24
    const/16 v243, 0x0

    goto :goto_1e

    .line 563
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_1b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 565
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 571
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_1c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 573
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 579
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_1d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 581
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v199

    .line 582
    .local v199, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v213

    .line 583
    .local v213, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v162

    check-cast v162, Ljava/lang/CharSequence;

    .line 584
    .local v162, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v199

    move-object/from16 v3, v213

    move-object/from16 v4, v162

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 590
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v162    # "description":Ljava/lang/CharSequence;
    .end local v199    # "map":Landroid/os/Bundle;
    .end local v213    # "persistentState":Landroid/os/PersistableBundle;
    :sswitch_1e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 592
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 598
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_1f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 600
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 606
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_20
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 608
    .restart local v60    # "token":Landroid/os/IBinder;
    if-eqz v60, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v230

    .line 609
    .local v230, "res":Ljava/lang/String;
    :goto_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    move-object/from16 v0, p3

    move-object/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 608
    .end local v230    # "res":Ljava/lang/String;
    :cond_25
    const/16 v230, 0x0

    goto :goto_1f

    .line 615
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_21
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 617
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v157

    .line 618
    .local v157, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    move-object/from16 v0, v157

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 620
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 624
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v157    # "cn":Landroid/content/ComponentName;
    :sswitch_22
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 626
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerNative;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v196

    .line 627
    .local v196, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    if-eqz v196, :cond_26

    invoke-interface/range {v196 .. v196}, Ljava/util/List;->size()I

    move-result v139

    .line 629
    .local v139, "N":I
    :goto_20
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    const/16 v176, 0x0

    .local v176, "i":I
    :goto_21
    move/from16 v0, v176

    move/from16 v1, v139

    if-ge v0, v1, :cond_27

    .line 632
    move-object/from16 v0, v196

    move/from16 v1, v176

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v248

    check-cast v248, Landroid/app/IAppTask;

    .line 633
    .local v248, "task":Landroid/app/IAppTask;
    invoke-interface/range {v248 .. v248}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 631
    add-int/lit8 v176, v176, 0x1

    goto :goto_21

    .line 628
    .end local v139    # "N":I
    .end local v176    # "i":I
    .end local v248    # "task":Landroid/app/IAppTask;
    :cond_26
    const/16 v139, -0x1

    goto :goto_20

    .line 635
    .restart local v139    # "N":I
    .restart local v176    # "i":I
    :cond_27
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 639
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v139    # "N":I
    .end local v176    # "i":I
    .end local v196    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    :sswitch_23
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v143

    .line 641
    .local v143, "activityToken":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 642
    .restart local v9    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v161

    check-cast v161, Landroid/app/ActivityManager$TaskDescription;

    .line 644
    .local v161, "descr":Landroid/app/ActivityManager$TaskDescription;
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v251

    check-cast v251, Landroid/graphics/Bitmap;

    .line 645
    .local v251, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move-object/from16 v2, v161

    move-object/from16 v3, v251

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v230

    .line 646
    .local v230, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 652
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v143    # "activityToken":Landroid/os/IBinder;
    .end local v161    # "descr":Landroid/app/ActivityManager$TaskDescription;
    .end local v230    # "res":I
    .end local v251    # "thumbnail":Landroid/graphics/Bitmap;
    :sswitch_24
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v237

    .line 654
    .local v237, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    const/4 v6, 0x0

    move-object/from16 v0, v237

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 656
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 660
    .end local v237    # "size":Landroid/graphics/Point;
    :sswitch_25
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v201

    .line 662
    .local v201, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 663
    .local v70, "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v201

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    move-result-object v194

    .line 664
    .local v194, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    if-eqz v194, :cond_28

    invoke-interface/range {v194 .. v194}, Ljava/util/List;->size()I

    move-result v139

    .line 666
    .restart local v139    # "N":I
    :goto_22
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    const/16 v176, 0x0

    .restart local v176    # "i":I
    :goto_23
    move/from16 v0, v176

    move/from16 v1, v139

    if-ge v0, v1, :cond_29

    .line 669
    move-object/from16 v0, v194

    move/from16 v1, v176

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v180

    check-cast v180, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 670
    .local v180, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v180

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 668
    add-int/lit8 v176, v176, 0x1

    goto :goto_23

    .line 665
    .end local v139    # "N":I
    .end local v176    # "i":I
    .end local v180    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_28
    const/16 v139, -0x1

    goto :goto_22

    .line 672
    .restart local v139    # "N":I
    .restart local v176    # "i":I
    :cond_29
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 676
    .end local v70    # "fl":I
    .end local v139    # "N":I
    .end local v176    # "i":I
    .end local v194    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v201    # "maxNum":I
    :sswitch_26
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v201

    .line 678
    .restart local v201    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 679
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 680
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v201

    move/from16 v2, v70

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Ljava/util/List;

    move-result-object v191

    .line 682
    .local v191, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    move-object/from16 v0, p3

    move-object/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 684
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 688
    .end local v17    # "userId":I
    .end local v70    # "fl":I
    .end local v191    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v201    # "maxNum":I
    :sswitch_27
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 690
    .local v61, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v250

    .line 691
    .local v250, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    if-eqz v250, :cond_2a

    .line 693
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    const/4 v6, 0x1

    move-object/from16 v0, v250

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 698
    :goto_24
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 696
    :cond_2a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 702
    .end local v61    # "id":I
    .end local v250    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :sswitch_28
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v201

    .line 704
    .restart local v201    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 705
    .restart local v70    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v201

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v193

    .line 706
    .local v193, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    if-eqz v193, :cond_2b

    invoke-interface/range {v193 .. v193}, Ljava/util/List;->size()I

    move-result v139

    .line 708
    .restart local v139    # "N":I
    :goto_25
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    const/16 v176, 0x0

    .restart local v176    # "i":I
    :goto_26
    move/from16 v0, v176

    move/from16 v1, v139

    if-ge v0, v1, :cond_2c

    .line 711
    move-object/from16 v0, v193

    move/from16 v1, v176

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v180

    check-cast v180, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 712
    .local v180, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v180

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 710
    add-int/lit8 v176, v176, 0x1

    goto :goto_26

    .line 707
    .end local v139    # "N":I
    .end local v176    # "i":I
    .end local v180    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2b
    const/16 v139, -0x1

    goto :goto_25

    .line 714
    .restart local v139    # "N":I
    .restart local v176    # "i":I
    :cond_2c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 718
    .end local v70    # "fl":I
    .end local v139    # "N":I
    .end local v176    # "i":I
    .end local v193    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v201    # "maxNum":I
    :sswitch_29
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v190

    .line 720
    .local v190, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    move-object/from16 v0, p3

    move-object/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 722
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 726
    .end local v190    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :sswitch_2a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v192

    .line 728
    .local v192, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    move-object/from16 v0, p3

    move-object/from16 v1, v192

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 730
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 734
    .end local v192    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :sswitch_2b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v197

    .line 736
    .local v197, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    move-object/from16 v0, p3

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 738
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 742
    .end local v197    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_2c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v248

    .line 744
    .local v248, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 745
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 747
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_27
    move-object/from16 v0, p0

    move/from16 v1, v248

    move/from16 v2, v70

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 745
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_2d
    const/16 v16, 0x0

    goto :goto_27

    .line 753
    .end local v70    # "fl":I
    .end local v248    # "task":I
    :sswitch_2d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v248

    .line 755
    .restart local v248    # "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 756
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 758
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_28
    move-object/from16 v0, p0

    move/from16 v1, v248

    move/from16 v2, v70

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFrontWithResult(IILandroid/os/Bundle;)Z

    move-result v230

    .line 759
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    if-eqz v230, :cond_2f

    const/4 v6, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 756
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v230    # "res":Z
    :cond_2e
    const/16 v16, 0x0

    goto :goto_28

    .line 760
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v230    # "res":Z
    :cond_2f
    const/4 v6, 0x0

    goto :goto_29

    .line 765
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v70    # "fl":I
    .end local v230    # "res":Z
    .end local v248    # "task":I
    :sswitch_2e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v248

    .line 767
    .restart local v248    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v248

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 773
    .end local v248    # "task":I
    :sswitch_2f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 775
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    const/16 v206, 0x1

    .line 776
    .local v206, "nonRoot":Z
    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v230

    .line 777
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    if-eqz v230, :cond_31

    const/4 v6, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 775
    .end local v206    # "nonRoot":Z
    .end local v230    # "res":Z
    :cond_30
    const/16 v206, 0x0

    goto :goto_2a

    .line 778
    .restart local v206    # "nonRoot":Z
    .restart local v230    # "res":Z
    :cond_31
    const/4 v6, 0x0

    goto :goto_2b

    .line 783
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v206    # "nonRoot":Z
    .end local v230    # "res":Z
    :sswitch_30
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v248

    .line 785
    .restart local v248    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v248

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 786
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 791
    .end local v248    # "task":I
    :sswitch_31
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v249

    .line 793
    .restart local v249    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v241

    .line 794
    .local v241, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_32

    const/16 v253, 0x1

    .line 795
    .local v253, "toTop":Z
    :goto_2c
    move-object/from16 v0, p0

    move/from16 v1, v249

    move/from16 v2, v241

    move/from16 v3, v253

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 794
    .end local v253    # "toTop":Z
    :cond_32
    const/16 v253, 0x0

    goto :goto_2c

    .line 801
    .end local v241    # "stackId":I
    .end local v249    # "taskId":I
    :sswitch_32
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v241

    .line 803
    .restart local v241    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move/16 v264, v0

    .line 804
    .local v264, "weight":F
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Landroid/graphics/Rect;

    .line 805
    .local v225, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v241

    move-object/from16 v2, v225

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeStack(ILandroid/graphics/Rect;)V

    .line 806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 811
    .end local v225    # "r":Landroid/graphics/Rect;
    .end local v241    # "stackId":I
    .end local v264    # "weight":F
    :sswitch_33
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAllStackInfos()Ljava/util/List;

    move-result-object v195

    .line 813
    .local v195, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    move-object/from16 v0, p3

    move-object/from16 v1, v195

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 815
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 819
    .end local v195    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :sswitch_34
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v241

    .line 821
    .restart local v241    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v241

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v180

    .line 822
    .local v180, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    if-eqz v180, :cond_33

    .line 824
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    const/4 v6, 0x0

    move-object/from16 v0, v180

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 829
    :goto_2d
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 827
    :cond_33
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 833
    .end local v180    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v241    # "stackId":I
    :sswitch_35
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v249

    .line 835
    .restart local v249    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInHomeStack(I)Z

    move-result v184

    .line 836
    .local v184, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    if-eqz v184, :cond_34

    const/4 v6, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 837
    :cond_34
    const/4 v6, 0x0

    goto :goto_2e

    .line 842
    .end local v184    # "isInHomeStack":Z
    .end local v249    # "taskId":I
    :sswitch_36
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v241

    .line 844
    .restart local v241    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v241

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 850
    .end local v241    # "stackId":I
    :sswitch_37
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 852
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-static/range {v60 .. v60}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 853
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 858
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_38
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 860
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/16 v208, 0x1

    .line 861
    .local v208, "onlyRoot":Z
    :goto_2f
    if-eqz v60, :cond_36

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v208

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v230

    .line 863
    .local v230, "res":I
    :goto_30
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 860
    .end local v208    # "onlyRoot":Z
    .end local v230    # "res":I
    :cond_35
    const/16 v208, 0x0

    goto :goto_2f

    .line 861
    .restart local v208    # "onlyRoot":Z
    :cond_36
    const/16 v230, -0x1

    goto :goto_30

    .line 869
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v208    # "onlyRoot":Z
    :sswitch_39
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 871
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 872
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 873
    .local v94, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 874
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    const/16 v240, 0x1

    .line 875
    .local v240, "stable":Z
    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v17

    move/from16 v3, v240

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v160

    .line 876
    .local v160, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    if-eqz v160, :cond_38

    .line 878
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    const/4 v6, 0x0

    move-object/from16 v0, v160

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 883
    :goto_32
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 874
    .end local v160    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v240    # "stable":Z
    :cond_37
    const/16 v240, 0x0

    goto :goto_31

    .line 881
    .restart local v160    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v240    # "stable":Z
    :cond_38
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 887
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v94    # "name":Ljava/lang/String;
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v160    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v240    # "stable":Z
    :sswitch_3a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 889
    .restart local v94    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 890
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 891
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v17

    move-object/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v160

    .line 892
    .restart local v160    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    if-eqz v160, :cond_39

    .line 894
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    const/4 v6, 0x0

    move-object/from16 v0, v160

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 899
    :goto_33
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 897
    :cond_39
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 903
    .end local v17    # "userId":I
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v94    # "name":Ljava/lang/String;
    .end local v160    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :sswitch_3b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 905
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 906
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v223

    .line 908
    .local v223, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v223

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 914
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v223    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :sswitch_3c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 916
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v240

    .line 917
    .local v240, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v255

    .line 918
    .local v255, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v150

    move/from16 v2, v240

    move/from16 v3, v255

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v230

    .line 919
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    if-eqz v230, :cond_3a

    const/4 v6, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 920
    :cond_3a
    const/4 v6, 0x0

    goto :goto_34

    .line 925
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v230    # "res":Z
    .end local v240    # "stable":I
    .end local v255    # "unstable":I
    :sswitch_3d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 927
    .restart local v150    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 933
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_3e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 935
    .restart local v150    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 936
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 941
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_3f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 942
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 943
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v240, 0x1

    .line 944
    .local v240, "stable":Z
    :goto_35
    move-object/from16 v0, p0

    move-object/from16 v1, v150

    move/from16 v2, v240

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 945
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 943
    .end local v240    # "stable":Z
    :cond_3b
    const/16 v240, 0x0

    goto :goto_35

    .line 950
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_40
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 952
    .restart local v94    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 953
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 959
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v94    # "name":Ljava/lang/String;
    :sswitch_41
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v158

    check-cast v158, Landroid/content/ComponentName;

    .line 961
    .local v158, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v158

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v215

    .line 962
    .local v215, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    move-object/from16 v0, v215

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 964
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 968
    .end local v158    # "comp":Landroid/content/ComponentName;
    .end local v215    # "pi":Landroid/app/PendingIntent;
    :sswitch_42
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 970
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 971
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/content/Intent;

    .line 972
    .local v67, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 973
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 974
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v157

    .line 975
    .restart local v157    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    move-object/from16 v0, v157

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 977
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 981
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v67    # "service":Landroid/content/Intent;
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v157    # "cn":Landroid/content/ComponentName;
    :sswitch_43
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 983
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 984
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/content/Intent;

    .line 985
    .restart local v67    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 986
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 987
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v230

    .line 988
    .local v230, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 994
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v67    # "service":Landroid/content/Intent;
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v230    # "res":I
    :sswitch_44
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 995
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v59

    .line 996
    .local v59, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 997
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v242

    .line 998
    .local v242, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    move/from16 v3, v242

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v230

    .line 999
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    if-eqz v230, :cond_3c

    const/4 v6, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1000
    :cond_3c
    const/4 v6, 0x0

    goto :goto_36

    .line 1005
    .end local v59    # "className":Landroid/content/ComponentName;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":Z
    .end local v242    # "startId":I
    :sswitch_45
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v59

    .line 1007
    .restart local v59    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1008
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 1009
    .restart local v61    # "id":I
    const/16 v62, 0x0

    .line 1010
    .local v62, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    .line 1011
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v62

    .end local v62    # "notification":Landroid/app/Notification;
    check-cast v62, Landroid/app/Notification;

    .line 1013
    .restart local v62    # "notification":Landroid/app/Notification;
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    const/16 v63, 0x1

    .local v63, "removeNotification":Z
    :goto_37
    move-object/from16 v58, p0

    .line 1014
    invoke-virtual/range {v58 .. v63}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 1015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1013
    .end local v63    # "removeNotification":Z
    :cond_3e
    const/16 v63, 0x0

    goto :goto_37

    .line 1020
    .end local v59    # "className":Landroid/content/ComponentName;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v61    # "id":I
    .end local v62    # "notification":Landroid/app/Notification;
    :sswitch_46
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1022
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1023
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1024
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/content/Intent;

    .line 1025
    .restart local v67    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1026
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 1028
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1029
    .restart local v17    # "userId":I
    invoke-static/range {v150 .. v150}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v69

    .local v69, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v64, p0

    move-object/from16 v65, v7

    move-object/from16 v66, v60

    move-object/from16 v68, v10

    move/from16 v71, v17

    .line 1030
    invoke-virtual/range {v64 .. v71}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v230

    .line 1031
    .local v230, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1037
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v67    # "service":Landroid/content/Intent;
    .end local v69    # "conn":Landroid/app/IServiceConnection;
    .end local v70    # "fl":I
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v230    # "res":I
    :sswitch_47
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1039
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v69

    .line 1040
    .restart local v69    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v230

    .line 1041
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    if-eqz v230, :cond_3f

    const/4 v6, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1042
    :cond_3f
    const/4 v6, 0x0

    goto :goto_38

    .line 1047
    .end local v69    # "conn":Landroid/app/IServiceConnection;
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v230    # "res":Z
    :sswitch_48
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1049
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1050
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v67

    .line 1051
    .local v67, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 1052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1057
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v67    # "service":Landroid/os/IBinder;
    :sswitch_49
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1059
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1060
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    const/16 v165, 0x1

    .line 1061
    .local v165, "doRebind":Z
    :goto_39
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v165

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 1062
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1060
    .end local v165    # "doRebind":Z
    :cond_40
    const/16 v165, 0x0

    goto :goto_39

    .line 1067
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_4a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1069
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1070
    .local v81, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v242

    .line 1071
    .restart local v242    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v230

    .line 1072
    .local v230, "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v81

    move/from16 v3, v242

    move/from16 v4, v230

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 1073
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1078
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v81    # "type":I
    .end local v230    # "res":I
    .end local v242    # "startId":I
    :sswitch_4b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1079
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v59

    .line 1080
    .restart local v59    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 1081
    .local v73, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 1082
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v75

    .line 1083
    .local v75, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1084
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v76

    .line 1085
    .local v76, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1086
    invoke-static/range {v150 .. v150}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v77

    .line 1087
    .local v77, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1088
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v79

    .local v79, "abiOverride":Ljava/lang/String;
    move-object/from16 v71, p0

    move-object/from16 v72, v59

    move/from16 v74, v70

    move/from16 v78, v17

    .line 1089
    invoke-virtual/range {v71 .. v79}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v230

    .line 1091
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    if-eqz v230, :cond_41

    const/4 v6, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1092
    :cond_41
    const/4 v6, 0x0

    goto :goto_3a

    .line 1098
    .end local v17    # "userId":I
    .end local v59    # "className":Landroid/content/ComponentName;
    .end local v70    # "fl":I
    .end local v73    # "profileFile":Ljava/lang/String;
    .end local v75    # "arguments":Landroid/os/Bundle;
    .end local v76    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v77    # "c":Landroid/app/IUiAutomationConnection;
    .end local v79    # "abiOverride":Ljava/lang/String;
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v230    # "res":Z
    :sswitch_4c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1100
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1101
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 1102
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v233

    .line 1103
    .local v233, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v51

    move-object/from16 v2, v233

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 1104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1109
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v51    # "resultCode":I
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v233    # "results":Landroid/os/Bundle;
    :sswitch_4d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1110
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    .line 1111
    .restart local v27    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    const/4 v6, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1113
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1117
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_4e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 1119
    .restart local v27    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1125
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_4f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1127
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v229

    .line 1128
    .local v229, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v229

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1134
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v229    # "requestedOrientation":I
    :sswitch_50
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1136
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v227

    .line 1137
    .local v227, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    move-object/from16 v0, p3

    move/from16 v1, v227

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1143
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v227    # "req":I
    :sswitch_51
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1145
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v157

    .line 1146
    .restart local v157    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    move-object/from16 v0, v157

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1148
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1152
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v157    # "cn":Landroid/content/ComponentName;
    :sswitch_52
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1154
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1156
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1160
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_53
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1162
    .restart local v81    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1163
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1164
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1165
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1168
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    .line 1169
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v86

    check-cast v86, [Landroid/content/Intent;

    .line 1170
    .local v86, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v87

    .line 1175
    .local v87, "requestResolvedTypes":[Ljava/lang/String;
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 1176
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 1178
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v80, p0

    move-object/from16 v82, v20

    move-object/from16 v83, v60

    move-object/from16 v84, v12

    move/from16 v85, v13

    move/from16 v88, v70

    move-object/from16 v89, v16

    move/from16 v90, v17

    .line 1179
    invoke-virtual/range {v80 .. v90}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v230

    .line 1182
    .local v230, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    if-eqz v230, :cond_44

    invoke-interface/range {v230 .. v230}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1184
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1172
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v70    # "fl":I
    .end local v86    # "requestIntents":[Landroid/content/Intent;
    .end local v87    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v230    # "res":Landroid/content/IIntentSender;
    :cond_42
    const/16 v86, 0x0

    .line 1173
    .restart local v86    # "requestIntents":[Landroid/content/Intent;
    const/16 v87, 0x0

    .restart local v87    # "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_3b

    .line 1176
    .restart local v70    # "fl":I
    :cond_43
    const/16 v16, 0x0

    goto :goto_3c

    .line 1183
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v230    # "res":Landroid/content/IIntentSender;
    :cond_44
    const/4 v6, 0x0

    goto :goto_3d

    .line 1188
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v70    # "fl":I
    .end local v81    # "type":I
    .end local v86    # "requestIntents":[Landroid/content/Intent;
    .end local v87    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v230    # "res":Landroid/content/IIntentSender;
    :sswitch_54
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v225

    .line 1191
    .local v225, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1197
    .end local v225    # "r":Landroid/content/IIntentSender;
    :sswitch_55
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v225

    .line 1200
    .restart local v225    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v230

    .line 1201
    .local v230, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    move-object/from16 v0, p3

    move-object/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1203
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1207
    .end local v225    # "r":Landroid/content/IIntentSender;
    .end local v230    # "res":Ljava/lang/String;
    :sswitch_56
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v225

    .line 1210
    .restart local v225    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v230

    .line 1211
    .local v230, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1217
    .end local v225    # "r":Landroid/content/IIntentSender;
    .end local v230    # "res":I
    :sswitch_57
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1219
    .restart local v40    # "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1220
    .restart local v41    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1221
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_45

    const/16 v92, 0x1

    .line 1222
    .local v92, "allowAll":Z
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    const/16 v93, 0x1

    .line 1223
    .local v93, "requireFull":Z
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1224
    .restart local v94    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v95

    .local v95, "callerPackage":Ljava/lang/String;
    move-object/from16 v88, p0

    move/from16 v89, v40

    move/from16 v90, v41

    move/from16 v91, v17

    .line 1225
    invoke-virtual/range {v88 .. v95}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v230

    .line 1227
    .restart local v230    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1229
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1221
    .end local v92    # "allowAll":Z
    .end local v93    # "requireFull":Z
    .end local v94    # "name":Ljava/lang/String;
    .end local v95    # "callerPackage":Ljava/lang/String;
    .end local v230    # "res":I
    :cond_45
    const/16 v92, 0x0

    goto :goto_3e

    .line 1222
    .restart local v92    # "allowAll":Z
    :cond_46
    const/16 v93, 0x0

    goto :goto_3f

    .line 1233
    .end local v17    # "userId":I
    .end local v40    # "callingPid":I
    .end local v41    # "callingUid":I
    .end local v92    # "allowAll":Z
    :sswitch_58
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v200

    .line 1235
    .local v200, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v200

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1241
    .end local v200    # "max":I
    :sswitch_59
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v189

    .line 1243
    .local v189, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    move-object/from16 v0, p3

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1249
    .end local v189    # "limit":I
    :sswitch_5a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1251
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1252
    .local v98, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    const/16 v183, 0x1

    .line 1253
    .local v183, "isForeground":Z
    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v98

    move/from16 v3, v183

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1252
    .end local v183    # "isForeground":Z
    :cond_47
    const/16 v183, 0x0

    goto :goto_40

    .line 1259
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v98    # "pid":I
    :sswitch_5b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1261
    .restart local v23    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1262
    .restart local v98    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1263
    .local v99, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v98

    move/from16 v3, v99

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v230

    .line 1264
    .restart local v230    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1270
    .end local v23    # "perm":Ljava/lang/String;
    .end local v98    # "pid":I
    .end local v99    # "uid":I
    .end local v230    # "res":I
    :sswitch_5c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1272
    .restart local v23    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1273
    .restart local v98    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1274
    .restart local v99    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1275
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v98

    move/from16 v3, v99

    move-object/from16 v4, v60

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v230

    .line 1276
    .restart local v230    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1282
    .end local v23    # "perm":Ljava/lang/String;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v98    # "pid":I
    .end local v99    # "uid":I
    .end local v230    # "res":I
    :sswitch_5d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1284
    .local v97, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1285
    .restart local v98    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1286
    .restart local v99    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1287
    .local v100, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1288
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v102

    .local v102, "callerToken":Landroid/os/IBinder;
    move-object/from16 v96, p0

    move/from16 v101, v17

    .line 1289
    invoke-virtual/range {v96 .. v102}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v230

    .line 1290
    .restart local v230    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1296
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "pid":I
    .end local v99    # "uid":I
    .end local v100    # "mode":I
    .end local v102    # "callerToken":Landroid/os/IBinder;
    .end local v230    # "res":I
    :sswitch_5e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1298
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v207

    .line 1300
    .local v207, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1301
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v207

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v230

    .line 1302
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    if-eqz v230, :cond_48

    const/4 v6, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1303
    :cond_48
    const/4 v6, 0x0

    goto :goto_41

    .line 1308
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v207    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v230    # "res":Z
    :sswitch_5f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1310
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1311
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v105

    .line 1312
    .local v105, "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1313
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1314
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v103, p0

    move-object/from16 v104, v7

    move-object/from16 v106, v97

    move/from16 v107, v100

    move/from16 v108, v17

    .line 1315
    invoke-virtual/range {v103 .. v108}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1317
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1321
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    .end local v105    # "targetPkg":Ljava/lang/String;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_60
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1323
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1324
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1325
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1326
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1327
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v100

    move/from16 v3, v17

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 1328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1333
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_61
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1334
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1335
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1336
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1337
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v100

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1343
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    :sswitch_62
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1345
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1346
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1347
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v100

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1353
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    :sswitch_63
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1355
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49

    const/16 v179, 0x1

    .line 1356
    .local v179, "incoming":Z
    :goto_42
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v179

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v212

    .line 1358
    .local v212, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1359
    const/4 v6, 0x1

    move-object/from16 v0, v212

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1360
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1355
    .end local v179    # "incoming":Z
    .end local v212    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_49
    const/16 v179, 0x0

    goto :goto_42

    .line 1364
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_64
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1366
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1367
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/4 v0, 0x1

    move/16 v262, v0

    .line 1368
    .local v262, "waiting":Z
    :goto_43
    move-object/from16 v0, p0

    move/from16 v1, v262

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1367
    .end local v262    # "waiting":Z
    :cond_4a
    const/4 v0, 0x0

    move/16 v262, v0

    goto :goto_43

    .line 1374
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_65
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1375
    new-instance v203, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v203 .. v203}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1376
    .local v203, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v203

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    const/4 v6, 0x0

    move-object/from16 v0, v203

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1379
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1383
    .end local v203    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :sswitch_66
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1386
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1390
    :sswitch_67
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v97

    .line 1392
    .restart local v97    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v214

    .line 1393
    .local v214, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    if-eqz v214, :cond_4b

    .line 1395
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    const/4 v6, 0x1

    move-object/from16 v0, v214

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1400
    :goto_44
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1398
    :cond_4b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    .line 1404
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v214    # "pfd":Landroid/os/ParcelFileDescriptor;
    :sswitch_68
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v6, 0x1

    :goto_45
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1407
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1405
    :cond_4c
    const/4 v6, 0x0

    goto :goto_45

    .line 1411
    :sswitch_69
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v220

    .line 1413
    .local v220, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    const/4 v0, 0x1

    move/16 v265, v0

    .line 1414
    .local v265, "wfd":Z
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    const/16 v211, 0x1

    .line 1415
    .local v211, "per":Z
    :goto_47
    move-object/from16 v0, p0

    move-object/from16 v1, v220

    move/from16 v2, v265

    move/from16 v3, v211

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1413
    .end local v211    # "per":Z
    .end local v265    # "wfd":Z
    :cond_4d
    const/4 v0, 0x0

    move/16 v265, v0

    goto :goto_46

    .line 1414
    .restart local v265    # "wfd":Z
    :cond_4e
    const/16 v211, 0x0

    goto :goto_47

    .line 1421
    .end local v220    # "pn":Ljava/lang/String;
    .end local v265    # "wfd":Z
    :sswitch_6a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    const/16 v167, 0x1

    .line 1423
    .local v167, "enabled":Z
    :goto_48
    move-object/from16 v0, p0

    move/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1422
    .end local v167    # "enabled":Z
    :cond_4f
    const/16 v167, 0x0

    goto :goto_48

    .line 1429
    :sswitch_6b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    move-object/16 v263, v0

    .line 1432
    .local v263, "watcher":Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v263

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1438
    .end local v263    # "watcher":Landroid/app/IActivityController;
    :sswitch_6c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1439
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1445
    :sswitch_6d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v182

    .line 1448
    .local v182, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v239

    .line 1449
    .local v239, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v238

    .line 1450
    .local v238, "sourcePkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v182

    move/from16 v2, v239

    move-object/from16 v3, v238

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1456
    .end local v182    # "is":Landroid/content/IIntentSender;
    .end local v238    # "sourcePkg":Ljava/lang/String;
    .end local v239    # "sourceUid":I
    :sswitch_6e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v216

    .line 1458
    .local v216, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v226

    .line 1459
    .local v226, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    const/16 v234, 0x1

    .line 1460
    .local v234, "secure":Z
    :goto_49
    move-object/from16 v0, p0

    move-object/from16 v1, v216

    move-object/from16 v2, v226

    move/from16 v3, v234

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v230

    .line 1461
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    if-eqz v230, :cond_51

    const/4 v6, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1463
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1459
    .end local v230    # "res":Z
    .end local v234    # "secure":Z
    :cond_50
    const/16 v234, 0x0

    goto :goto_49

    .line 1462
    .restart local v230    # "res":Z
    .restart local v234    # "secure":Z
    :cond_51
    const/4 v6, 0x0

    goto :goto_4a

    .line 1467
    .end local v216    # "pids":[I
    .end local v226    # "reason":Ljava/lang/String;
    .end local v230    # "res":Z
    .end local v234    # "secure":Z
    :sswitch_6f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v226

    .line 1469
    .restart local v226    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v226

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v230

    .line 1470
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    if-eqz v230, :cond_52

    const/4 v6, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1471
    :cond_52
    const/4 v6, 0x0

    goto :goto_4b

    .line 1476
    .end local v226    # "reason":Ljava/lang/String;
    .end local v230    # "res":Z
    :sswitch_70
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1478
    .local v7, "app":Landroid/os/IBinder;
    new-instance v156, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v156

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1479
    .local v156, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v156

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1485
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v156    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :sswitch_71
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1487
    .restart local v7    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v246

    .line 1488
    .local v246, "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_53

    const/16 v245, 0x1

    .line 1489
    .local v245, "system":Z
    :goto_4c
    new-instance v156, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v156

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1490
    .restart local v156    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v246

    move/from16 v2, v245

    move-object/from16 v3, v156

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v230

    .line 1491
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    if-eqz v230, :cond_54

    const/4 v6, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1493
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1488
    .end local v156    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v230    # "res":Z
    .end local v245    # "system":Z
    :cond_53
    const/16 v245, 0x0

    goto :goto_4c

    .line 1492
    .restart local v156    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v230    # "res":Z
    .restart local v245    # "system":Z
    :cond_54
    const/4 v6, 0x0

    goto :goto_4d

    .line 1497
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v156    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v230    # "res":Z
    .end local v245    # "system":Z
    .end local v246    # "tag":Ljava/lang/String;
    :sswitch_72
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1499
    .restart local v7    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v261, v0

    .line 1500
    .local v261, "violationMask":I
    new-instance v180, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v180

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1501
    .local v180, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v261

    move-object/from16 v2, v180

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1503
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1507
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v180    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v261    # "violationMask":I
    :sswitch_73
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v236

    .line 1509
    .local v236, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v236

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1511
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1515
    .end local v236    # "sig":I
    :sswitch_74
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1517
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1518
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1524
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_75
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1525
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1531
    :sswitch_76
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1533
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1534
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1536
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1540
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_77
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1541
    new-instance v180, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v180 .. v180}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1543
    .local v180, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    const/4 v6, 0x0

    move-object/from16 v0, v180

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1546
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1550
    .end local v180    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :sswitch_78
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v27

    .line 1552
    .local v27, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    const/4 v6, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1554
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1558
    .end local v27    # "config":Landroid/content/pm/ConfigurationInfo;
    :sswitch_79
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 1560
    .local v107, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1561
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_55

    const/16 v109, 0x1

    .line 1562
    .local v109, "start":Z
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1563
    .local v111, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_4f
    move-object/from16 v106, p0

    move/from16 v108, v17

    move-object/from16 v110, v15

    .line 1565
    invoke-virtual/range {v106 .. v111}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v230

    .line 1566
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    if-eqz v230, :cond_57

    const/4 v6, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1568
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1561
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v109    # "start":Z
    .end local v111    # "profileType":I
    .end local v230    # "res":Z
    :cond_55
    const/16 v109, 0x0

    goto :goto_4e

    .line 1563
    .restart local v109    # "start":Z
    .restart local v111    # "profileType":I
    :cond_56
    const/4 v15, 0x0

    goto :goto_4f

    .line 1567
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v230    # "res":Z
    :cond_57
    const/4 v6, 0x0

    goto :goto_50

    .line 1572
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v17    # "userId":I
    .end local v107    # "process":Ljava/lang/String;
    .end local v109    # "start":Z
    .end local v111    # "profileType":I
    .end local v230    # "res":Z
    :sswitch_7a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v230

    .line 1574
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1575
    if-eqz v230, :cond_58

    const/4 v6, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1576
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1575
    :cond_58
    const/4 v6, 0x0

    goto :goto_51

    .line 1580
    .end local v230    # "res":Z
    :sswitch_7b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1581
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1583
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1587
    :sswitch_7c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1588
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1594
    :sswitch_7d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1595
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/content/Intent;

    .line 1596
    .local v67, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1597
    .restart local v10    # "resolvedType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1, v10}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v152

    .line 1598
    .local v152, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    move-object/from16 v0, p3

    move-object/from16 v1, v152

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1600
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1604
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v67    # "service":Landroid/content/Intent;
    .end local v152    # "binder":Landroid/os/IBinder;
    :sswitch_7e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1605
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v180

    check-cast v180, Landroid/content/pm/ApplicationInfo;

    .line 1606
    .local v180, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v151

    .line 1607
    .local v151, "backupRestoreMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    move/from16 v2, v151

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v244

    .line 1608
    .local v244, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1609
    if-eqz v244, :cond_59

    const/4 v6, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1610
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1609
    :cond_59
    const/4 v6, 0x0

    goto :goto_52

    .line 1614
    .end local v151    # "backupRestoreMode":I
    .end local v180    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v244    # "success":Z
    :sswitch_7f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1616
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v144

    .line 1617
    .local v144, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v144

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1619
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1623
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v144    # "agent":Landroid/os/IBinder;
    :sswitch_80
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1624
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v180

    check-cast v180, Landroid/content/pm/ApplicationInfo;

    .line 1625
    .restart local v180    # "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1627
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1631
    .end local v180    # "info":Landroid/content/pm/ApplicationInfo;
    :sswitch_81
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1633
    .restart local v20    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    .line 1634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1639
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_82
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v217

    .line 1641
    .local v217, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v147

    .line 1642
    .local v147, "appid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v226

    .line 1643
    .restart local v226    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    move/from16 v2, v147

    move-object/from16 v3, v226

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V

    .line 1644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1645
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1649
    .end local v147    # "appid":I
    .end local v217    # "pkg":Ljava/lang/String;
    .end local v226    # "reason":Ljava/lang/String;
    :sswitch_83
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v226

    .line 1651
    .restart local v226    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v226

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1653
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1657
    .end local v226    # "reason":Ljava/lang/String;
    :sswitch_84
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v216

    .line 1659
    .restart local v216    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v230

    .line 1660
    .local v230, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1661
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v230

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1662
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1666
    .end local v216    # "pids":[I
    .end local v230    # "res":[Landroid/os/Debug$MemoryInfo;
    :sswitch_85
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v222

    .line 1668
    .local v222, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1669
    .restart local v99    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v222

    move/from16 v2, v99

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1675
    .end local v99    # "uid":I
    .end local v222    # "processName":Ljava/lang/String;
    :sswitch_86
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1677
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1678
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v168

    .line 1679
    .local v168, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v169

    .line 1680
    .local v169, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v20

    move/from16 v3, v168

    move/from16 v4, v169

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1682
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1686
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v168    # "enterAnim":I
    .end local v169    # "exitAnim":I
    :sswitch_87
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1687
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v148

    .line 1688
    .local v148, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    if-eqz v148, :cond_5a

    const/4 v6, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1690
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1689
    :cond_5a
    const/4 v6, 0x0

    goto :goto_53

    .line 1694
    .end local v148    # "areThey":Z
    :sswitch_88
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_5b

    const/16 v204, 0x1

    .line 1696
    .local v204, "monkey":Z
    :goto_54
    move-object/from16 v0, p0

    move/from16 v1, v204

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1698
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1695
    .end local v204    # "monkey":Z
    :cond_5b
    const/16 v204, 0x0

    goto :goto_54

    .line 1702
    :sswitch_89
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1703
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1704
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1709
    :sswitch_8a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1711
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v187

    .line 1712
    .local v187, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1713
    if-eqz v187, :cond_5c

    const/4 v6, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1714
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1713
    :cond_5c
    const/4 v6, 0x0

    goto :goto_55

    .line 1718
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v187    # "isit":Z
    :sswitch_8b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1720
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v186

    .line 1721
    .local v186, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    if-eqz v186, :cond_5d

    const/4 v6, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1722
    :cond_5d
    const/4 v6, 0x0

    goto :goto_56

    .line 1727
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v186    # "isTopOfTask":Z
    :sswitch_8c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1729
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v159

    .line 1730
    .local v159, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1731
    if-eqz v159, :cond_5e

    const/4 v6, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1732
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1731
    :cond_5e
    const/4 v6, 0x0

    goto :goto_57

    .line 1736
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v159    # "converted":Z
    :sswitch_8d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1739
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_5f

    .line 1740
    const/16 v153, 0x0

    .line 1744
    .local v153, "bundle":Landroid/os/Bundle;
    :goto_58
    if-nez v153, :cond_60

    const/16 v16, 0x0

    .line 1745
    .local v16, "options":Landroid/app/ActivityOptions;
    :goto_59
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v159

    .line 1746
    .restart local v159    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1747
    if-eqz v159, :cond_61

    const/4 v6, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1748
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1742
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v153    # "bundle":Landroid/os/Bundle;
    .end local v159    # "converted":Z
    :cond_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v153

    .restart local v153    # "bundle":Landroid/os/Bundle;
    goto :goto_58

    .line 1744
    :cond_60
    new-instance v16, Landroid/app/ActivityOptions;

    move-object/from16 v0, v16

    move-object/from16 v1, v153

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_59

    .line 1747
    .restart local v16    # "options":Landroid/app/ActivityOptions;
    .restart local v159    # "converted":Z
    :cond_61
    const/4 v6, 0x0

    goto :goto_5a

    .line 1752
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v153    # "bundle":Landroid/os/Bundle;
    .end local v159    # "converted":Z
    :sswitch_8e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1754
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    move-result-object v16

    .line 1755
    .restart local v16    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    if-nez v16, :cond_62

    const/4 v6, 0x0

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1757
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1756
    :cond_62
    invoke-virtual/range {v16 .. v16}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_5b

    .line 1761
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_8f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1763
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_63

    const/16 v178, 0x1

    .line 1764
    .local v178, "imm":Z
    :goto_5c
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v178

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1763
    .end local v178    # "imm":Z
    :cond_63
    const/16 v178, 0x0

    goto :goto_5c

    .line 1770
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_90
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1771
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v187

    .line 1772
    .restart local v187    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1773
    if-eqz v187, :cond_64

    const/4 v6, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1774
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1773
    :cond_64
    const/4 v6, 0x0

    goto :goto_5d

    .line 1778
    .end local v187    # "isit":Z
    :sswitch_91
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1780
    .restart local v99    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v181

    .line 1781
    .local v181, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1782
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v202

    .line 1783
    .local v202, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v99

    move/from16 v2, v181

    move-object/from16 v3, v20

    move-object/from16 v4, v202

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1785
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1789
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v99    # "uid":I
    .end local v181    # "initialPid":I
    .end local v202    # "message":Ljava/lang/String;
    :sswitch_92
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1790
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1791
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1792
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v81

    .line 1793
    .local v81, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1794
    move-object/from16 v0, p3

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1795
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1799
    .end local v17    # "userId":I
    .end local v81    # "type":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    :sswitch_93
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1801
    .restart local v94    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    .line 1802
    .local v23, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1803
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1804
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1808
    .end local v23    # "perm":Landroid/os/IBinder;
    .end local v94    # "name":Ljava/lang/String;
    :sswitch_94
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v113

    .line 1810
    .local v113, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 1811
    .local v114, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v105

    .line 1812
    .restart local v105    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1813
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1814
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v118

    .line 1815
    .local v118, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v119

    .local v119, "targetUserId":I
    move-object/from16 v112, p0

    move-object/from16 v115, v105

    move-object/from16 v116, v97

    move/from16 v117, v100

    .line 1816
    invoke-virtual/range {v112 .. v119}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 1818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1819
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1823
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    .end local v105    # "targetPkg":Ljava/lang/String;
    .end local v113    # "owner":Landroid/os/IBinder;
    .end local v114    # "fromUid":I
    .end local v118    # "sourceUserId":I
    .end local v119    # "targetUserId":I
    :sswitch_95
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v113

    .line 1825
    .restart local v113    # "owner":Landroid/os/IBinder;
    const/16 v97, 0x0

    .line 1826
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_65

    .line 1827
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    .end local v97    # "uri":Landroid/net/Uri;
    check-cast v97, Landroid/net/Uri;

    .line 1829
    .restart local v97    # "uri":Landroid/net/Uri;
    :cond_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1830
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1831
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    move-object/from16 v2, v97

    move/from16 v3, v100

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 1832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1833
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1837
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    .end local v113    # "owner":Landroid/os/IBinder;
    :sswitch_96
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1839
    .restart local v41    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v105

    .line 1840
    .restart local v105    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1841
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v124

    .line 1842
    .local v124, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v120, p0

    move/from16 v121, v41

    move-object/from16 v122, v105

    move-object/from16 v123, v97

    move/from16 v125, v17

    .line 1843
    invoke-virtual/range {v120 .. v125}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v230

    .line 1844
    .local v230, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1845
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1846
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1850
    .end local v17    # "userId":I
    .end local v41    # "callingUid":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v105    # "targetPkg":Ljava/lang/String;
    .end local v124    # "modeFlags":I
    .end local v230    # "res":I
    :sswitch_97
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 1852
    .restart local v107    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1853
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_66

    const/16 v128, 0x1

    .line 1854
    .local v128, "managed":Z
    :goto_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v129

    .line 1855
    .local v129, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v130, v6

    .local v130, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_5f
    move-object/from16 v125, p0

    move-object/from16 v126, v107

    move/from16 v127, v17

    .line 1857
    invoke-virtual/range {v125 .. v130}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v230

    .line 1858
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1859
    if-eqz v230, :cond_68

    const/4 v6, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1860
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1853
    .end local v128    # "managed":Z
    .end local v129    # "path":Ljava/lang/String;
    .end local v130    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v230    # "res":Z
    :cond_66
    const/16 v128, 0x0

    goto :goto_5e

    .line 1855
    .restart local v128    # "managed":Z
    .restart local v129    # "path":Ljava/lang/String;
    :cond_67
    const/16 v130, 0x0

    goto :goto_5f

    .line 1859
    .restart local v130    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v230    # "res":Z
    :cond_68
    const/4 v6, 0x0

    goto :goto_60

    .line 1865
    .end local v17    # "userId":I
    .end local v107    # "process":Ljava/lang/String;
    .end local v128    # "managed":Z
    .end local v129    # "path":Ljava/lang/String;
    .end local v130    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v230    # "res":Z
    :sswitch_98
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1867
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1868
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1869
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v134

    check-cast v134, [Landroid/content/Intent;

    .line 1870
    .local v134, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v135

    .line 1871
    .local v135, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1872
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_69

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 1874
    .local v16, "options":Landroid/os/Bundle;
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v131, p0

    move-object/from16 v132, v7

    move-object/from16 v133, v8

    move-object/from16 v136, v11

    move-object/from16 v137, v16

    move/from16 v138, v17

    .line 1875
    invoke-virtual/range {v131 .. v138}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v232

    .line 1877
    .restart local v232    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1878
    move-object/from16 v0, p3

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1879
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1872
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v232    # "result":I
    :cond_69
    const/16 v16, 0x0

    goto :goto_61

    .line 1884
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v134    # "intents":[Landroid/content/Intent;
    .end local v135    # "resolvedTypes":[Ljava/lang/String;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_99
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1885
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v100

    .line 1886
    .restart local v100    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1887
    move-object/from16 v0, p3

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1888
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1893
    .end local v100    # "mode":I
    :sswitch_9a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1895
    .restart local v100    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1897
    move-object/from16 v0, p3

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1898
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1903
    .end local v100    # "mode":I
    :sswitch_9b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v217

    .line 1905
    .restart local v217    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v100

    .line 1906
    .restart local v100    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1907
    move-object/from16 v0, p3

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1908
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1913
    .end local v100    # "mode":I
    .end local v217    # "pkg":Ljava/lang/String;
    :sswitch_9c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v217

    .line 1915
    .restart local v217    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1916
    .restart local v100    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    move/from16 v2, v100

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1918
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1922
    .end local v100    # "mode":I
    .end local v217    # "pkg":Ljava/lang/String;
    :sswitch_9d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v258, v0

    .line 1924
    .local v258, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v258

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v232

    .line 1925
    .local v232, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1926
    if-eqz v232, :cond_6a

    const/4 v6, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1927
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1926
    :cond_6a
    const/4 v6, 0x0

    goto :goto_62

    .line 1931
    .end local v232    # "result":Z
    .end local v258    # "userid":I
    :sswitch_9e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v258, v0

    .line 1933
    .restart local v258    # "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v258

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    move-result v232

    .line 1934
    .restart local v232    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1935
    if-eqz v232, :cond_6b

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1936
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1935
    :cond_6b
    const/4 v6, 0x0

    goto :goto_63

    .line 1940
    .end local v232    # "result":Z
    .end local v258    # "userid":I
    :sswitch_9f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v258, v0

    .line 1942
    .restart local v258    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v154

    .line 1944
    .local v154, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v258

    move-object/from16 v2, v154

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v232

    .line 1945
    .local v232, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1946
    move-object/from16 v0, p3

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1947
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1951
    .end local v154    # "callback":Landroid/app/IStopUserCallback;
    .end local v232    # "result":I
    .end local v258    # "userid":I
    :sswitch_a0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1952
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    move-object/16 v257, v0

    .line 1953
    .local v257, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1954
    const/4 v6, 0x0

    move-object/from16 v0, v257

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1955
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1959
    .end local v257    # "userInfo":Landroid/content/pm/UserInfo;
    :sswitch_a1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v258, v0

    .line 1961
    .restart local v258    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6c

    const/16 v209, 0x1

    .line 1962
    .local v209, "orStopping":Z
    :goto_64
    move-object/from16 v0, p0

    move/from16 v1, v258

    move/from16 v2, v209

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(IZ)Z

    move-result v232

    .line 1963
    .local v232, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1964
    if-eqz v232, :cond_6d

    const/4 v6, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1965
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1961
    .end local v209    # "orStopping":Z
    .end local v232    # "result":Z
    :cond_6c
    const/16 v209, 0x0

    goto :goto_64

    .line 1964
    .restart local v209    # "orStopping":Z
    .restart local v232    # "result":Z
    :cond_6d
    const/4 v6, 0x0

    goto :goto_65

    .line 1969
    .end local v209    # "orStopping":Z
    .end local v232    # "result":Z
    .end local v258    # "userid":I
    :sswitch_a2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1970
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v232

    .line 1971
    .local v232, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1972
    move-object/from16 v0, p3

    move-object/from16 v1, v232

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1973
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1978
    .end local v232    # "result":[I
    :sswitch_a3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v249

    .line 1980
    .restart local v249    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeTask(I)Z

    move-result v232

    .line 1981
    .local v232, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1982
    if-eqz v232, :cond_6e

    const/4 v6, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1983
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1982
    :cond_6e
    const/4 v6, 0x0

    goto :goto_66

    .line 1988
    .end local v232    # "result":Z
    .end local v249    # "taskId":I
    :sswitch_a4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v249

    .line 1990
    .restart local v249    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v173

    .line 1991
    .local v173, "flag":I
    move-object/from16 v0, p0

    move/from16 v1, v249

    move/from16 v2, v173

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v232

    .line 1992
    .restart local v232    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1993
    if-eqz v232, :cond_6f

    const/4 v6, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1994
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1993
    :cond_6f
    const/4 v6, 0x0

    goto :goto_67

    .line 1998
    .end local v173    # "flag":I
    .end local v232    # "result":Z
    .end local v249    # "taskId":I
    :sswitch_a5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v207

    .line 2001
    .local v207, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2002
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2006
    .end local v207    # "observer":Landroid/app/IProcessObserver;
    :sswitch_a6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v207

    .line 2009
    .restart local v207    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2010
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2015
    .end local v207    # "observer":Landroid/app/IProcessObserver;
    :sswitch_a7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2016
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v217

    .line 2017
    .restart local v217    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v149

    .line 2018
    .local v149, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2019
    if-eqz v149, :cond_70

    const/4 v6, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2020
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2019
    :cond_70
    const/4 v6, 0x0

    goto :goto_68

    .line 2025
    .end local v149    # "ask":Z
    .end local v217    # "pkg":Ljava/lang/String;
    :sswitch_a8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v217

    .line 2027
    .restart local v217    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_71

    const/16 v149, 0x1

    .line 2028
    .restart local v149    # "ask":Z
    :goto_69
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    move/from16 v2, v149

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2029
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2030
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2027
    .end local v149    # "ask":Z
    :cond_71
    const/16 v149, 0x0

    goto :goto_69

    .line 2034
    .end local v217    # "pkg":Ljava/lang/String;
    :sswitch_a9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v225

    .line 2037
    .restart local v225    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v230

    .line 2038
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2039
    if-eqz v230, :cond_72

    const/4 v6, 0x1

    :goto_6a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2040
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2039
    :cond_72
    const/4 v6, 0x0

    goto :goto_6a

    .line 2044
    .end local v225    # "r":Landroid/content/IIntentSender;
    .end local v230    # "res":Z
    :sswitch_aa
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v225

    .line 2047
    .restart local v225    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v230

    .line 2048
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2049
    if-eqz v230, :cond_73

    const/4 v6, 0x1

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2050
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2049
    :cond_73
    const/4 v6, 0x0

    goto :goto_6b

    .line 2054
    .end local v225    # "r":Landroid/content/IIntentSender;
    .end local v230    # "res":Z
    :sswitch_ab
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v225

    .line 2057
    .restart local v225    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v9

    .line 2058
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2059
    if-eqz v9, :cond_74

    .line 2060
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2061
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2065
    :goto_6c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2063
    :cond_74
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6c

    .line 2069
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v225    # "r":Landroid/content/IIntentSender;
    :sswitch_ac
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2070
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v225

    .line 2072
    .restart local v225    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v221

    .line 2073
    .local v221, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v225

    move-object/from16 v2, v221

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v246

    .line 2074
    .restart local v246    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2075
    move-object/from16 v0, p3

    move-object/from16 v1, v246

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2076
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2080
    .end local v221    # "prefix":Ljava/lang/String;
    .end local v225    # "r":Landroid/content/IIntentSender;
    .end local v246    # "tag":Ljava/lang/String;
    :sswitch_ad
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2081
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 2082
    .local v27, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 2083
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2084
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2089
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_ae
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v216

    .line 2091
    .restart local v216    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v224

    .line 2092
    .local v224, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2093
    move-object/from16 v0, p3

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2094
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2099
    .end local v216    # "pids":[I
    .end local v224    # "pss":[J
    :sswitch_af
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v216

    .line 2101
    .restart local v216    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPswap([I)[J

    move-result-object v224

    .line 2102
    .restart local v224    # "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2103
    move-object/from16 v0, p3

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2104
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2109
    .end local v216    # "pids":[I
    .end local v224    # "pss":[J
    :sswitch_b0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2110
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v205

    check-cast v205, Ljava/lang/CharSequence;

    .line 2111
    .local v205, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_75

    const/16 v146, 0x1

    .line 2112
    .local v146, "always":Z
    :goto_6d
    move-object/from16 v0, p0

    move-object/from16 v1, v205

    move/from16 v2, v146

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 2113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2114
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2111
    .end local v146    # "always":Z
    :cond_75
    const/16 v146, 0x0

    goto :goto_6d

    .line 2118
    .end local v205    # "msg":Ljava/lang/CharSequence;
    :sswitch_b1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2119
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    .line 2120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2121
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2125
    :sswitch_b2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2127
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v163

    .line 2128
    .local v163, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v163

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v230

    .line 2129
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2130
    if-eqz v230, :cond_76

    const/4 v6, 0x1

    :goto_6e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2131
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2130
    :cond_76
    const/4 v6, 0x0

    goto :goto_6e

    .line 2135
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v163    # "destAffinity":Ljava/lang/String;
    .end local v230    # "res":Z
    :sswitch_b3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2137
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v247

    check-cast v247, Landroid/content/Intent;

    .line 2138
    .local v247, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 2139
    .restart local v51    # "resultCode":I
    const/16 v52, 0x0

    .line 2140
    .local v52, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_77

    .line 2141
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    .end local v52    # "resultData":Landroid/content/Intent;
    check-cast v52, Landroid/content/Intent;

    .line 2143
    .restart local v52    # "resultData":Landroid/content/Intent;
    :cond_77
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v247

    move/from16 v3, v51

    move-object/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v230

    .line 2144
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2145
    if-eqz v230, :cond_78

    const/4 v6, 0x1

    :goto_6f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2146
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2145
    :cond_78
    const/4 v6, 0x0

    goto :goto_6f

    .line 2150
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Landroid/content/Intent;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":Z
    .end local v247    # "target":Landroid/content/Intent;
    :sswitch_b4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2152
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v230

    .line 2153
    .local v230, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2154
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2155
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2159
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":I
    :sswitch_b5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2161
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v230

    .line 2162
    .local v230, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2163
    move-object/from16 v0, p3

    move-object/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2164
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2168
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":Ljava/lang/String;
    :sswitch_b6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v207

    .line 2171
    .local v207, "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2173
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2177
    .end local v207    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_b7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v207

    .line 2180
    .restart local v207    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2182
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2186
    .end local v207    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_b8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2187
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestBugReport()V

    .line 2188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2189
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2193
    :sswitch_b9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 2195
    .restart local v98    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_79

    const/16 v140, 0x1

    .line 2196
    .local v140, "aboveSystem":Z
    :goto_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v226

    .line 2197
    .restart local v226    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v98

    move/from16 v2, v140

    move-object/from16 v3, v226

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v230

    .line 2198
    .local v230, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2199
    move-object/from16 v0, p3

    move-wide/from16 v1, v230

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2200
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2195
    .end local v140    # "aboveSystem":Z
    .end local v226    # "reason":Ljava/lang/String;
    .end local v230    # "res":J
    :cond_79
    const/16 v140, 0x0

    goto :goto_70

    .line 2204
    .end local v98    # "pid":I
    :sswitch_ba
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v228

    .line 2206
    .local v228, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v228

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v230

    .line 2207
    .local v230, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2208
    move-object/from16 v0, p3

    move-object/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2209
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2213
    .end local v228    # "requestType":I
    .end local v230    # "res":Landroid/os/Bundle;
    :sswitch_bb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2215
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v170

    .line 2216
    .local v170, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v170

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 2217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2218
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2222
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v170    # "extras":Landroid/os/Bundle;
    :sswitch_bc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2223
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2224
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v228

    .line 2225
    .restart local v228    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v174

    .line 2226
    .local v174, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v256, v0

    .line 2227
    .local v256, "userHandle":I
    move-object/from16 v0, p0

    move/from16 v1, v228

    move-object/from16 v2, v174

    move/from16 v3, v256

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;I)Z

    move-result v230

    .line 2228
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2229
    if-eqz v230, :cond_7a

    const/4 v6, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2230
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2229
    :cond_7a
    const/4 v6, 0x0

    goto :goto_71

    .line 2234
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v174    # "hint":Ljava/lang/String;
    .end local v228    # "requestType":I
    .end local v230    # "res":Z
    .end local v256    # "userHandle":I
    :sswitch_bd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 2236
    .restart local v99    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v226

    .line 2237
    .restart local v226    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v99

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killUid(ILjava/lang/String;)V

    .line 2238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2239
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2243
    .end local v99    # "uid":I
    .end local v226    # "reason":Ljava/lang/String;
    :sswitch_be
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 2245
    .restart local v50    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7b

    const/16 v145, 0x1

    .line 2246
    .local v145, "allowRestart":Z
    :goto_72
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v145

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2248
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2245
    .end local v145    # "allowRestart":Z
    :cond_7b
    const/16 v145, 0x0

    goto :goto_72

    .line 2252
    .end local v50    # "who":Landroid/os/IBinder;
    :sswitch_bf
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2254
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2256
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2260
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_c0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2262
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2264
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2268
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_c1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2269
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2271
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2276
    :sswitch_c2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2277
    const/16 v254, 0x0

    .line 2278
    .local v254, "transform":Landroid/view/animation/Transformation;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7c

    .line 2279
    sget-object v6, Landroid/view/animation/Transformation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v254

    .end local v254    # "transform":Landroid/view/animation/Transformation;
    check-cast v254, Landroid/view/animation/Transformation;

    .line 2281
    .restart local v254    # "transform":Landroid/view/animation/Transformation;
    :cond_7c
    move-object/from16 v0, p0

    move-object/from16 v1, v254

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setGlobalTransform(Landroid/view/animation/Transformation;)V

    .line 2282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2283
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2287
    .end local v254    # "transform":Landroid/view/animation/Transformation;
    :sswitch_c3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2288
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getGlobalTransform()Landroid/view/animation/Transformation;

    move-result-object v254

    .line 2289
    .restart local v254    # "transform":Landroid/view/animation/Transformation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2290
    if-nez v254, :cond_7d

    .line 2291
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2297
    :goto_73
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2293
    :cond_7d
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2294
    const/4 v6, 0x0

    move-object/from16 v0, v254

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/view/animation/Transformation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_73

    .line 2301
    .end local v254    # "transform":Landroid/view/animation/Transformation;
    :sswitch_c4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2302
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2304
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2308
    :sswitch_c5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v210

    .line 2310
    .local v210, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    move-result-object v154

    .line 2312
    .local v154, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v210

    move-object/from16 v2, v154

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v142

    .line 2314
    .local v142, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2315
    if-eqz v142, :cond_7e

    .line 2316
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2317
    invoke-interface/range {v142 .. v142}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2321
    :goto_74
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2319
    :cond_7e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_74

    .line 2325
    .end local v142    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v154    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v210    # "parentActivityToken":Landroid/os/IBinder;
    :sswitch_c6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v142

    .line 2328
    .restart local v142    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 2329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2330
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2334
    .end local v142    # "activityContainer":Landroid/app/IActivityContainer;
    :sswitch_c7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v143

    .line 2336
    .restart local v143    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v164

    .line 2337
    .local v164, "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2338
    move-object/from16 v0, p3

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2339
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2343
    .end local v143    # "activityToken":Landroid/os/IBinder;
    .end local v164    # "displayId":I
    :sswitch_c8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2344
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getHomeActivityToken()Landroid/os/IBinder;

    move-result-object v175

    .line 2345
    .local v175, "homeActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2346
    move-object/from16 v0, p3

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2347
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2351
    .end local v175    # "homeActivityToken":Landroid/os/IBinder;
    :sswitch_c9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v249

    .line 2353
    .restart local v249    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    .line 2354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2355
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2359
    .end local v249    # "taskId":I
    :sswitch_ca
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2361
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    .line 2362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2363
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2367
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_cb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2368
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startLockTaskModeOnCurrent()V

    .line 2369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2370
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2374
    :sswitch_cc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2375
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    .line 2376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2377
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2381
    :sswitch_cd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2382
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskModeOnCurrent()V

    .line 2383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2384
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2388
    :sswitch_ce
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2389
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    move-result v185

    .line 2390
    .local v185, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2391
    if-eqz v185, :cond_7f

    const/4 v6, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2392
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2391
    :cond_7f
    const/4 v6, 0x0

    goto :goto_75

    .line 2396
    .end local v185    # "isInLockTaskMode":Z
    :sswitch_cf
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2398
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v260, v0

    move-object/from16 v0, v260

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    move-object/16 v260, v0

    .line 2400
    .local v260, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v260

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2402
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2406
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v260    # "values":Landroid/app/ActivityManager$TaskDescription;
    :sswitch_d0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v171

    .line 2408
    .local v171, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v177

    .line 2409
    .local v177, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2410
    if-nez v177, :cond_80

    .line 2411
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2416
    :goto_76
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2413
    :cond_80
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2414
    const/4 v6, 0x0

    move-object/from16 v0, v177

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_76

    .line 2420
    .end local v171    # "filename":Ljava/lang/String;
    .end local v177    # "icon":Landroid/graphics/Bitmap;
    :sswitch_d1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_81

    .line 2423
    const/16 v153, 0x0

    .line 2427
    .restart local v153    # "bundle":Landroid/os/Bundle;
    :goto_77
    if-nez v153, :cond_82

    const/16 v16, 0x0

    .line 2428
    .local v16, "options":Landroid/app/ActivityOptions;
    :goto_78
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 2429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2430
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2425
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v153    # "bundle":Landroid/os/Bundle;
    :cond_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v153

    .restart local v153    # "bundle":Landroid/os/Bundle;
    goto :goto_77

    .line 2427
    :cond_82
    new-instance v16, Landroid/app/ActivityOptions;

    move-object/from16 v0, v16

    move-object/from16 v1, v153

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_78

    .line 2434
    .end local v153    # "bundle":Landroid/os/Bundle;
    :sswitch_d2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2436
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_83

    const/16 v166, 0x1

    .line 2437
    .local v166, "enable":Z
    :goto_79
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v166

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v244

    .line 2438
    .restart local v244    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2439
    if-eqz v244, :cond_84

    const/4 v6, 0x1

    :goto_7a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2440
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2436
    .end local v166    # "enable":Z
    .end local v244    # "success":Z
    :cond_83
    const/16 v166, 0x0

    goto :goto_79

    .line 2439
    .restart local v166    # "enable":Z
    .restart local v244    # "success":Z
    :cond_84
    const/4 v6, 0x0

    goto :goto_7a

    .line 2444
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v166    # "enable":Z
    .end local v244    # "success":Z
    :sswitch_d3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2446
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    move-result v167

    .line 2447
    .restart local v167    # "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2448
    if-eqz v167, :cond_85

    const/4 v6, 0x1

    :goto_7b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2449
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2448
    :cond_85
    const/4 v6, 0x0

    goto :goto_7b

    .line 2453
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v167    # "enabled":Z
    :sswitch_d4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2455
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    .line 2456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2457
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2461
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_d5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2463
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2465
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2469
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_d6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2471
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2473
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2477
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_d7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2478
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    .line 2479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2480
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2484
    :sswitch_d8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2485
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->systemBackupRestored()V

    .line 2486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2487
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2492
    :sswitch_d9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2493
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->notifyWindowTimeout()V

    .line 2494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2495
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2503
    :sswitch_da
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v252

    .line 2505
    .local v252, "timeout":I
    move-object/from16 v0, p0

    move/from16 v1, v252

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->haltActivityResuming(I)Z

    move-result v232

    .line 2506
    .restart local v232    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2507
    if-eqz v232, :cond_86

    const/4 v6, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2507
    :cond_86
    const/4 v6, 0x0

    goto :goto_7c

    .line 2513
    .end local v232    # "result":Z
    .end local v252    # "timeout":I
    :sswitch_db
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2514
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restoreActivityResuming()Z

    move-result v232

    .line 2515
    .restart local v232    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2516
    if-eqz v232, :cond_87

    const/4 v6, 0x1

    :goto_7d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2517
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2516
    :cond_87
    const/4 v6, 0x0

    goto :goto_7d

    .line 2524
    .end local v232    # "result":Z
    :sswitch_dc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2525
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v59

    .line 2526
    .restart local v59    # "className":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setWallpaperProcess(Landroid/content/ComponentName;)V

    .line 2527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2528
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2535
    .end local v59    # "className":Landroid/content/ComponentName;
    :sswitch_dd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_88

    const/16 v183, 0x1

    .line 2537
    .restart local v183    # "isForeground":Z
    :goto_7e
    move-object/from16 v0, p0

    move/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateWallpaperState(Z)V

    .line 2538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2539
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2536
    .end local v183    # "isForeground":Z
    :cond_88
    const/16 v183, 0x0

    goto :goto_7e

    .line 2545
    :sswitch_de
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2547
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2548
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceKillPackage(Ljava/lang/String;I)V

    .line 2549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2550
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2556
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_df
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v218

    .line 2558
    .local v218, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_89

    const/16 v235, 0x1

    .line 2559
    .local v235, "set":Z
    :goto_7f
    move-object/from16 v0, p0

    move-object/from16 v1, v218

    move/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPersistentForce(Ljava/lang/String;Z)V

    .line 2560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2561
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2558
    .end local v235    # "set":Z
    :cond_89
    const/16 v235, 0x0

    goto :goto_7f

    .line 2567
    .end local v218    # "pkgName":Ljava/lang/String;
    :sswitch_e0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2569
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2570
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isEnableLongPressBackLenovo(Landroid/os/IBinder;I)Ljava/lang/String;

    move-result-object v230

    .line 2571
    .local v230, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2572
    move-object/from16 v0, p3

    move-object/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2573
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2577
    .end local v17    # "userId":I
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":Ljava/lang/String;
    :sswitch_e1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2579
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v218

    .line 2580
    .restart local v218    # "pkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2581
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v218

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->forceStopPackageLenovo(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v232

    .line 2582
    .restart local v232    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2583
    if-eqz v232, :cond_8a

    const/4 v6, 0x1

    :goto_80
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2584
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2583
    :cond_8a
    const/4 v6, 0x0

    goto :goto_80

    .line 2588
    .end local v17    # "userId":I
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v218    # "pkgName":Ljava/lang/String;
    .end local v232    # "result":Z
    :sswitch_e2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2590
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cleanActivityStateFinishedLenovo(Landroid/os/IBinder;)V

    .line 2591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2592
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_70
        0x3 -> :sswitch_3
        0x4 -> :sswitch_66
        0x5 -> :sswitch_67
        0xb -> :sswitch_d
        0xc -> :sswitch_14
        0xd -> :sswitch_15
        0xe -> :sswitch_16
        0xf -> :sswitch_17
        0x10 -> :sswitch_18
        0x11 -> :sswitch_19
        0x12 -> :sswitch_1a
        0x13 -> :sswitch_1c
        0x14 -> :sswitch_1d
        0x15 -> :sswitch_20
        0x16 -> :sswitch_21
        0x17 -> :sswitch_25
        0x18 -> :sswitch_2c
        0x19 -> :sswitch_2e
        0x1a -> :sswitch_30
        0x1b -> :sswitch_38
        0x1d -> :sswitch_39
        0x1e -> :sswitch_3b
        0x1f -> :sswitch_3c
        0x20 -> :sswitch_e
        0x21 -> :sswitch_41
        0x22 -> :sswitch_42
        0x23 -> :sswitch_43
        0x24 -> :sswitch_46
        0x25 -> :sswitch_47
        0x26 -> :sswitch_48
        0x27 -> :sswitch_1b
        0x2a -> :sswitch_69
        0x2b -> :sswitch_6a
        0x2c -> :sswitch_4b
        0x2d -> :sswitch_4c
        0x2e -> :sswitch_4d
        0x2f -> :sswitch_4e
        0x30 -> :sswitch_44
        0x31 -> :sswitch_51
        0x32 -> :sswitch_52
        0x33 -> :sswitch_58
        0x34 -> :sswitch_59
        0x35 -> :sswitch_5b
        0x36 -> :sswitch_5d
        0x37 -> :sswitch_5f
        0x38 -> :sswitch_60
        0x39 -> :sswitch_6b
        0x3a -> :sswitch_64
        0x3b -> :sswitch_73
        0x3c -> :sswitch_26
        0x3d -> :sswitch_4a
        0x3e -> :sswitch_1f
        0x3f -> :sswitch_53
        0x40 -> :sswitch_54
        0x41 -> :sswitch_55
        0x42 -> :sswitch_6c
        0x43 -> :sswitch_b
        0x44 -> :sswitch_6d
        0x45 -> :sswitch_3f
        0x46 -> :sswitch_4f
        0x47 -> :sswitch_50
        0x48 -> :sswitch_49
        0x49 -> :sswitch_5a
        0x4a -> :sswitch_45
        0x4b -> :sswitch_2f
        0x4c -> :sswitch_65
        0x4d -> :sswitch_29
        0x4e -> :sswitch_5e
        0x4f -> :sswitch_76
        0x50 -> :sswitch_6e
        0x51 -> :sswitch_28
        0x52 -> :sswitch_27
        0x53 -> :sswitch_2a
        0x54 -> :sswitch_78
        0x55 -> :sswitch_7d
        0x56 -> :sswitch_79
        0x57 -> :sswitch_7a
        0x58 -> :sswitch_7b
        0x59 -> :sswitch_7c
        0x5a -> :sswitch_7e
        0x5b -> :sswitch_7f
        0x5c -> :sswitch_80
        0x5d -> :sswitch_56
        0x5e -> :sswitch_57
        0x5f -> :sswitch_81
        0x60 -> :sswitch_82
        0x61 -> :sswitch_83
        0x62 -> :sswitch_84
        0x63 -> :sswitch_85
        0x64 -> :sswitch_9
        0x65 -> :sswitch_86
        0x66 -> :sswitch_71
        0x67 -> :sswitch_74
        0x68 -> :sswitch_87
        0x69 -> :sswitch_7
        0x6a -> :sswitch_13
        0x6b -> :sswitch_8
        0x6c -> :sswitch_2b
        0x6d -> :sswitch_89
        0x6e -> :sswitch_72
        0x6f -> :sswitch_8a
        0x70 -> :sswitch_8f
        0x71 -> :sswitch_90
        0x72 -> :sswitch_91
        0x73 -> :sswitch_92
        0x74 -> :sswitch_93
        0x75 -> :sswitch_94
        0x76 -> :sswitch_95
        0x77 -> :sswitch_96
        0x78 -> :sswitch_97
        0x79 -> :sswitch_98
        0x7a -> :sswitch_a1
        0x7b -> :sswitch_1e
        0x7c -> :sswitch_99
        0x7d -> :sswitch_9a
        0x7e -> :sswitch_9b
        0x7f -> :sswitch_9c
        0x80 -> :sswitch_a7
        0x81 -> :sswitch_a8
        0x82 -> :sswitch_9d
        0x84 -> :sswitch_a3
        0x85 -> :sswitch_a5
        0x86 -> :sswitch_a6
        0x87 -> :sswitch_a9
        0x88 -> :sswitch_ad
        0x89 -> :sswitch_ae
        0x8a -> :sswitch_b0
        0x8c -> :sswitch_75
        0x8d -> :sswitch_3a
        0x8e -> :sswitch_40
        0x8f -> :sswitch_77
        0x90 -> :sswitch_6f
        0x91 -> :sswitch_a0
        0x92 -> :sswitch_b2
        0x93 -> :sswitch_b3
        0x94 -> :sswitch_68
        0x95 -> :sswitch_f
        0x96 -> :sswitch_b4
        0x97 -> :sswitch_3d
        0x98 -> :sswitch_aa
        0x99 -> :sswitch_5
        0x9a -> :sswitch_9f
        0x9b -> :sswitch_b6
        0x9c -> :sswitch_b7
        0x9d -> :sswitch_a2
        0x9e -> :sswitch_b8
        0x9f -> :sswitch_b9
        0xa1 -> :sswitch_ab
        0xa2 -> :sswitch_ba
        0xa3 -> :sswitch_bb
        0xa4 -> :sswitch_b5
        0xa5 -> :sswitch_bd
        0xa6 -> :sswitch_88
        0xa7 -> :sswitch_be
        0xa8 -> :sswitch_c5
        0xa9 -> :sswitch_31
        0xaa -> :sswitch_32
        0xab -> :sswitch_33
        0xac -> :sswitch_36
        0xad -> :sswitch_34
        0xae -> :sswitch_8c
        0xaf -> :sswitch_8d
        0xb0 -> :sswitch_c0
        0xb1 -> :sswitch_bf
        0xb2 -> :sswitch_c1
        0xb3 -> :sswitch_c4
        0xb4 -> :sswitch_61
        0xb5 -> :sswitch_62
        0xb6 -> :sswitch_63
        0xb7 -> :sswitch_3e
        0xb8 -> :sswitch_c8
        0xb9 -> :sswitch_c7
        0xba -> :sswitch_c6
        0xd3 -> :sswitch_ac
        0xd4 -> :sswitch_9e
        0xd5 -> :sswitch_35
        0xd6 -> :sswitch_c9
        0xd7 -> :sswitch_ca
        0xd8 -> :sswitch_cc
        0xd9 -> :sswitch_ce
        0xda -> :sswitch_cf
        0xdb -> :sswitch_a
        0xdc -> :sswitch_8e
        0xdd -> :sswitch_22
        0xde -> :sswitch_cb
        0xdf -> :sswitch_cd
        0xe0 -> :sswitch_10
        0xe1 -> :sswitch_8b
        0xe2 -> :sswitch_d2
        0xe3 -> :sswitch_d3
        0xe4 -> :sswitch_d4
        0xe5 -> :sswitch_d5
        0xe6 -> :sswitch_c
        0xe7 -> :sswitch_d6
        0xe8 -> :sswitch_b1
        0xe9 -> :sswitch_6
        0xea -> :sswitch_23
        0xeb -> :sswitch_24
        0xec -> :sswitch_11
        0xed -> :sswitch_12
        0xee -> :sswitch_d7
        0xef -> :sswitch_d0
        0xf0 -> :sswitch_bc
        0xf1 -> :sswitch_d1
        0xf2 -> :sswitch_5c
        0xf3 -> :sswitch_37
        0xf4 -> :sswitch_d8
        0x12d -> :sswitch_d9
        0x12e -> :sswitch_dc
        0x12f -> :sswitch_dd
        0x130 -> :sswitch_da
        0x131 -> :sswitch_db
        0x132 -> :sswitch_af
        0x133 -> :sswitch_de
        0x134 -> :sswitch_2d
        0x135 -> :sswitch_df
        0x7d2 -> :sswitch_c2
        0x7d3 -> :sswitch_c3
        0xbba -> :sswitch_4
        0xfa2 -> :sswitch_0
        0x1240 -> :sswitch_e0
        0x1241 -> :sswitch_e1
        0x1242 -> :sswitch_e2
        0x138a -> :sswitch_1
        0x138b -> :sswitch_2
        0x1772 -> :sswitch_a4
    .end sparse-switch
.end method
