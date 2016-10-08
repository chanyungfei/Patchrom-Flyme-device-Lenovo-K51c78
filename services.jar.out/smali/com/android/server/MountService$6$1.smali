.class Lcom/android/server/MountService$6$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$6;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$6;)V
    .locals 0

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/android/server/MountService$6$1;->this$1:Lcom/android/server/MountService$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1319
    const-string v12, "MountService"

    const-string v13, "MountService BOOT_IPO!"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :try_start_0
    const-string v12, "MountService"

    const-string v13, "Notify VOLD IPO startup"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$6$1;->this$1:Lcom/android/server/MountService$6;

    iget-object v12, v12, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v12}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v12

    const-string v13, "volume"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ipo"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "startup"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :goto_0
    const-string v12, "ro.mtk_2sdcard_swap"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$6$1;->this$1:Lcom/android/server/MountService$6;

    iget-object v12, v12, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x1

    # setter for: Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z
    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$4202(Lcom/android/server/MountService;Z)Z

    .line 1329
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$6$1;->this$1:Lcom/android/server/MountService$6;

    iget-object v12, v12, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v12}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)V

    .line 1332
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$6$1;->this$1:Lcom/android/server/MountService$6;

    iget-object v12, v12, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v12}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v12

    const-string v13, "volume"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "list"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v12

    const/16 v13, 0x6e

    invoke-static {v12, v13}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v9

    .line 1335
    .local v9, "vols":[Ljava/lang/String;
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v10, v1, v3

    .line 1336
    .local v10, "volstr":Ljava/lang/String;
    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1338
    .local v8, "tok":[Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v5, v8, v12

    .line 1339
    .local v5, "path":Ljava/lang/String;
    const-string v7, "removed"

    .line 1342
    .local v7, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$6$1;->this$1:Lcom/android/server/MountService$6;

    iget-object v12, v12, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v12}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1343
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$6$1;->this$1:Lcom/android/server/MountService$6;

    iget-object v12, v12, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/StorageVolume;

    .line 1344
    .local v11, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1345
    if-nez v11, :cond_3

    .line 1346
    :try_start_3
    const-string v12, "MountService"

    const-string v13, "Error processing initial volume state:  volume == null"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidParameterException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1335
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1323
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/String;
    .end local v8    # "tok":[Ljava/lang/String;
    .end local v9    # "vols":[Ljava/lang/String;
    .end local v10    # "volstr":Ljava/lang/String;
    .end local v11    # "volume":Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v2

    .line 1324
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v12, "MountService"

    const-string v13, "Error reinit SD card while IPO"

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1344
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "state":Ljava/lang/String;
    .restart local v8    # "tok":[Ljava/lang/String;
    .restart local v9    # "vols":[Ljava/lang/String;
    .restart local v10    # "volstr":Ljava/lang/String;
    :catchall_0
    move-exception v12

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v12
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/InvalidParameterException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1374
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/String;
    .end local v8    # "tok":[Ljava/lang/String;
    .end local v9    # "vols":[Ljava/lang/String;
    .end local v10    # "volstr":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1375
    .restart local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v12, "MountService"

    const-string v13, "Error processing initial volume state"

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1379
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$6$1;->this$1:Lcom/android/server/MountService$6;

    iget-object v12, v12, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static {v12}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)V

    .line 1380
    return-void

    .line 1350
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "state":Ljava/lang/String;
    .restart local v8    # "tok":[Ljava/lang/String;
    .restart local v9    # "vols":[Ljava/lang/String;
    .restart local v10    # "volstr":Ljava/lang/String;
    .restart local v11    # "volume":Landroid/os/storage/StorageVolume;
    :cond_3
    const/4 v12, 0x2

    :try_start_6
    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1351
    .local v6, "st":I
    if-nez v6, :cond_4

    .line 1352
    const-string v7, "removed"

    .line 1365
    :goto_4
    if-eqz v7, :cond_1

    .line 1366
    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating valid state "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$3800()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "removed"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1368
    const-string v12, "MountService"

    const-string v13, "do not update /storage/usbotg MEDIA_REMOVED state in IPO"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/InvalidParameterException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 1376
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "st":I
    .end local v7    # "state":Ljava/lang/String;
    .end local v8    # "tok":[Ljava/lang/String;
    .end local v9    # "vols":[Ljava/lang/String;
    .end local v10    # "volstr":Ljava/lang/String;
    .end local v11    # "volume":Landroid/os/storage/StorageVolume;
    :catch_2
    move-exception v2

    .line 1377
    .local v2, "e":Ljava/security/InvalidParameterException;
    const-string v12, "MountService"

    const-string v13, "Error processing initial volume state"

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1353
    .end local v2    # "e":Ljava/security/InvalidParameterException;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "st":I
    .restart local v7    # "state":Ljava/lang/String;
    .restart local v8    # "tok":[Ljava/lang/String;
    .restart local v9    # "vols":[Ljava/lang/String;
    .restart local v10    # "volstr":Ljava/lang/String;
    .restart local v11    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4
    const/4 v12, 0x1

    if-ne v6, v12, :cond_5

    .line 1354
    :try_start_7
    const-string v7, "unmounted"

    goto :goto_4

    .line 1355
    :cond_5
    const/4 v12, 0x4

    if-ne v6, v12, :cond_6

    .line 1356
    const-string v7, "mounted"

    .line 1357
    const-string v12, "MountService"

    const-string v13, "Media already mounted on daemon connection"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1358
    :cond_6
    const/4 v12, 0x7

    if-ne v6, v12, :cond_7

    .line 1359
    const-string v7, "shared"

    .line 1360
    const-string v12, "MountService"

    const-string v13, "Media shared on daemon connection"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1362
    :cond_7
    new-instance v12, Ljava/security/InvalidParameterException;

    const-string v13, "Unexpected state %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1370
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$6$1;->this$1:Lcom/android/server/MountService$6;

    iget-object v12, v12, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v12, v11, v7}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/security/InvalidParameterException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2
.end method
