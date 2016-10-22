.class Landroid/app/ApplicationThreadProxy;
.super Ljava/lang/Object;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# instance fields
.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-object p1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    .line 748
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "testName"    # Landroid/content/ComponentName;
    .param p5, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p6, "testArgs"    # Landroid/os/Bundle;
    .param p7, "testWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p8, "uiAutomationConnection"    # Landroid/app/IUiAutomationConnection;
    .param p9, "debugMode"    # I
    .param p10, "openGlTrace"    # Z
    .param p11, "restrictedBackupMode"    # Z
    .param p12, "persistent"    # Z
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p16, "coreSettings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/app/ProfilerInfo;",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "Landroid/app/IUiAutomationConnection;",
            "IZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1021
    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p15, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1022
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.app.IApplicationThread"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1024
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1025
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1026
    if-nez p4, :cond_0

    .line 1027
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    :goto_0
    if-eqz p5, :cond_1

    .line 1033
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    const/4 v2, 0x1

    invoke-virtual {p5, v1, v2}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1038
    :goto_1
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1039
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1040
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1041
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    if-eqz p10, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    if-eqz p11, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    if-eqz p12, :cond_4

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    const/4 v2, 0x0

    move-object/from16 v0, p13

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1046
    const/4 v2, 0x0

    move-object/from16 v0, p14

    invoke-virtual {v0, v1, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1047
    move-object/from16 v0, p15

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1048
    move-object/from16 v0, p16

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1049
    iget-object v2, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1052
    return-void

    .line 1029
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1036
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1042
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 1043
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 1044
    :cond_4
    const/4 v2, 0x0

    goto :goto_4
.end method

.method public clearDnsCache()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1089
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1090
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1091
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1094
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1203
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1209
    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1240
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1242
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1243
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1245
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1247
    return-void
.end method

.method public dumpAllMessageHistory()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1437
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1438
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1440
    return-void
.end method

.method public dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1303
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1305
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1306
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1308
    return-void
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1294
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1296
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1297
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1299
    return-void
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "managed"    # Z
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1223
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1224
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1225
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1226
    if-eqz p3, :cond_1

    .line 1227
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    invoke-virtual {p3, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1232
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1235
    return-void

    :cond_0
    move v1, v3

    .line 1224
    goto :goto_0

    .line 1230
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZ[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1278
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1279
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IApplicationThread"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1281
    invoke-virtual {p2, v0, v4}, Landroid/os/Debug$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1282
    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    if-eqz p4, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    if-eqz p5, :cond_2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1286
    iget-object v2, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1290
    return-void

    :cond_0
    move v2, v4

    .line 1282
    goto :goto_0

    :cond_1
    move v2, v4

    .line 1283
    goto :goto_1

    :cond_2
    move v3, v4

    .line 1284
    goto :goto_2
.end method

.method public dumpMessageHistory()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1428
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1429
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x38

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1431
    return-void
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1130
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1132
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1133
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1134
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1136
    return-void
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1119
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1121
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1122
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1123
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1125
    return-void
.end method

.method public enableLooperLog()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1447
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1448
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x39

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1450
    return-void
.end method

.method public processInBackground()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1110
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1111
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1114
    return-void
.end method

.method public profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 5
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1178
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1179
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    if-eqz p2, :cond_1

    .line 1182
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    invoke-virtual {p2, v0, v2}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1187
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1190
    return-void

    :cond_0
    move v1, v3

    .line 1179
    goto :goto_0

    .line 1185
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1323
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1325
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1326
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1327
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1330
    return-void
.end method

.method public final scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1168
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1170
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1173
    return-void
.end method

.method public scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1396
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1398
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1402
    return-void

    .line 1398
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 964
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.app.IApplicationThread"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 966
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 967
    if-eqz p3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 972
    return-void
.end method

.method public scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1386
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1388
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1390
    return-void
.end method

.method public scheduleClearActivityStateLenovo(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1408
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1410
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2ca

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1412
    return-void
.end method

.method public final scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1073
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1074
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1075
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1078
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1213
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1215
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1218
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "backupMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 928
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 930
    invoke-virtual {p2, v0, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 931
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 935
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 951
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 952
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 953
    invoke-virtual {p2, v0, v2}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 954
    invoke-virtual {p3, v0, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 955
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 959
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 897
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 899
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 904
    return-void

    .line 899
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 940
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 942
    invoke-virtual {p2, v0, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 943
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 946
    return-void
.end method

.method public scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1418
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1420
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x37

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1422
    return-void
.end method

.method public final scheduleExit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1055
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1056
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1057
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1060
    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 5
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1368
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1369
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1370
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1372
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "ident"    # I
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "curConfig"    # Landroid/content/res/Configuration;
    .param p6, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p7, "referrer"    # Ljava/lang/String;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "procState"    # I
    .param p10, "state"    # Landroid/os/Bundle;
    .param p11, "persistentState"    # Landroid/os/PersistableBundle;
    .param p14, "notResumed"    # Z
    .param p15, "isForward"    # Z
    .param p16, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;ZZ",
            "Landroid/app/ProfilerInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 833
    .local p12, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p13, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 834
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.app.IApplicationThread"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 835
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 836
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 837
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 839
    const/4 v2, 0x0

    invoke-virtual {p5, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 840
    const/4 v2, 0x0

    invoke-virtual {p6, v1, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 841
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 842
    if-eqz p8, :cond_0

    invoke-interface {p8}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 843
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 845
    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 846
    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 847
    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 848
    if-eqz p14, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    if-eqz p15, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    if-eqz p16, :cond_3

    .line 851
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    const/4 v2, 0x1

    move-object/from16 v0, p16

    invoke-virtual {v0, v1, v2}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 856
    :goto_3
    iget-object v2, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 859
    return-void

    .line 842
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 848
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 849
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 854
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method

.method public final scheduleLowMemory()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1159
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1160
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1163
    return-void
.end method

.method public scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 5
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 885
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 886
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 888
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 889
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 892
    return-void
.end method

.method public scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1348
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1350
    if-nez p2, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1351
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x1

    invoke-interface {v1, v3, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1354
    return-void

    .line 1350
    :cond_0
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 757
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 759
    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    if-eqz p3, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    if-eqz p5, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 766
    return-void

    :cond_1
    move v1, v3

    .line 759
    goto :goto_0

    :cond_2
    move v1, v3

    .line 760
    goto :goto_1
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Ljava/lang/String;
    .param p6, "map"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 910
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.app.IApplicationThread"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 912
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 913
    invoke-virtual {p3, v0, v1}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 914
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 917
    if-eqz p7, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 923
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .locals 5
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "dataStr"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1142
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1143
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1144
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1145
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1148
    if-eqz p6, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1149
    if-eqz p7, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1152
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1155
    return-void

    :cond_1
    move v1, v3

    .line 1148
    goto :goto_0
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 866
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 868
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 869
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 870
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    if-eqz p5, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    if-eqz p6, :cond_1

    .line 873
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    invoke-virtual {p6, v0, v3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 878
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 881
    return-void

    :cond_0
    move v1, v3

    .line 871
    goto :goto_0

    .line 876
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public final scheduleRestoreActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .param p7, "toMax"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1458
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1460
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1461
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1462
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1463
    if-eqz p5, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    if-eqz p6, :cond_2

    .line 1465
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1466
    invoke-virtual {p6, v0, v3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1470
    :goto_1
    if-eqz p7, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1473
    return-void

    :cond_1
    move v1, v3

    .line 1463
    goto :goto_0

    .line 1468
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "procState"    # I
    .param p3, "isForward"    # Z
    .param p4, "resumeArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 806
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 808
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    if-eqz p3, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 811
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 814
    return-void

    .line 809
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 818
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 819
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 821
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 822
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 825
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskRemoved"    # Z
    .param p3, "startId"    # I
    .param p4, "flags"    # I
    .param p5, "args"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 988
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 989
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 990
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    if-eqz p5, :cond_1

    .line 994
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    invoke-virtual {p5, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 999
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1002
    return-void

    :cond_0
    move v1, v3

    .line 990
    goto :goto_0

    .line 997
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 794
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 796
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 800
    return-void

    .line 796
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z
    .param p3, "configChanges"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 771
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 773
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 778
    return-void

    .line 773
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1007
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1009
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1012
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1064
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1065
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1068
    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1336
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1338
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1342
    return-void

    .line 1338
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public scheduleTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1268
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1273
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 977
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 979
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 980
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 983
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 783
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 785
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 789
    return-void

    .line 785
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "coreSettings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1251
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1253
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1254
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .param p1, "proxy"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "pacFileUrl"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1099
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1103
    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1104
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1106
    return-void
.end method

.method public setProcessState(I)V
    .locals 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1359
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1363
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 5
    .param p1, "group"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1194
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1199
    return-void
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "provider"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1313
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1315
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1317
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1259
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1261
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1262
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x29

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1264
    return-void
.end method

.method public updateTimePrefs(Z)V
    .locals 5
    .param p1, "is24Hour"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1377
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1378
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1379
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1381
    return-void

    .line 1378
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateTimeZone()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1082
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1083
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1086
    return-void
.end method
