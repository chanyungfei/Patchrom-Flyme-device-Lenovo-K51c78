.class Lcom/android/server/MountService$7;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1546
    iput-object p1, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 1552
    const-string v3, "vold.encrypt_progress"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1553
    .local v17, "encryptProgress":Ljava/lang/String;
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1554
    .local v15, "decrypt":Ljava/lang/String;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encryptProgress("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), decrypt("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "trigger_restart_min_framework"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1556
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encryptProgress("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), skip the command to vold."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4400(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;

    move-result-object v22

    .line 1558
    .local v22, "primaryVolume":Landroid/os/storage/StorageVolume;
    if-eqz v22, :cond_0

    .line 1559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    const-string v4, "removed"

    move-object/from16 v0, v22

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v3, v0, v4}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1567
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4500(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4500(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1574
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4600(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4600(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1683
    .end local v22    # "primaryVolume":Landroid/os/storage/StorageVolume;
    :cond_2
    :goto_0
    return-void

    .line 1582
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v3}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v3

    const-string v4, "volume"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "list"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "broadcast"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v3

    const/16 v4, 0x6e

    invoke-static {v3, v4}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v27

    .line 1585
    .local v27, "vols":[Ljava/lang/String;
    move-object/from16 v13, v27

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    aget-object v28, v13, v19

    .line 1586
    .local v28, "volstr":Ljava/lang/String;
    const-string v3, " "

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 1588
    .local v26, "tok":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v21, v26, v3

    .line 1589
    .local v21, "path":Ljava/lang/String;
    const-string v25, "removed"

    .line 1592
    .local v25, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/storage/StorageVolume;

    .line 1594
    .local v29, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1595
    if-nez v29, :cond_a

    :try_start_2
    const-string v3, "ro.mtk_multi_patition"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "usbotg"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1597
    :cond_4
    const-string v3, "MountService"

    const-string v4, "Error processing initial volume state:  volume == null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1585
    :cond_5
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1594
    .end local v29    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1647
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v20    # "len$":I
    .end local v21    # "path":Ljava/lang/String;
    .end local v25    # "state":Ljava/lang/String;
    .end local v26    # "tok":[Ljava/lang/String;
    .end local v27    # "vols":[Ljava/lang/String;
    .end local v28    # "volstr":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1648
    .local v16, "e":Ljava/lang/Exception;
    const-string v3, "MountService"

    const-string v4, "Error processing initial volume state"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1654
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v3, "ro.mtk_2sdcard_swap"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)V

    .line 1664
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4500(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4500(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1670
    :cond_8
    const-string v3, ""

    const-string v4, "vold.encrypt_progress"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->copyLocaleFromMountService()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$4800(Lcom/android/server/MountService;)V

    .line 1675
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v3}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 1680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4600(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4600(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    .line 1601
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v19    # "i$":I
    .restart local v20    # "len$":I
    .restart local v21    # "path":Ljava/lang/String;
    .restart local v25    # "state":Ljava/lang/String;
    .restart local v26    # "tok":[Ljava/lang/String;
    .restart local v27    # "vols":[Ljava/lang/String;
    .restart local v28    # "volstr":Ljava/lang/String;
    .restart local v29    # "volume":Landroid/os/storage/StorageVolume;
    :cond_a
    const/4 v3, 0x2

    :try_start_5
    aget-object v3, v26, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 1602
    .local v24, "st":I
    if-nez v24, :cond_c

    .line 1603
    const-string v25, "removed"

    .line 1616
    :goto_3
    if-eqz v25, :cond_5

    .line 1617
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating valid state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    const-string v3, "ro.mtk_multi_patition"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1620
    if-nez v29, :cond_11

    const-string v3, "usbotg"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v30

    monitor-enter v30
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1623
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1624
    .local v23, "size":I
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice onDaemonConnected:before mVolumes size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 1626
    .local v2, "usbotgVolume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/MountService;->isVolumeRegistered(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/android/server/MountService;->access$4700(Lcom/android/server/MountService;Ljava/lang/String;)Z

    move-result v14

    .line 1627
    .local v14, "bPathIncluded":Z
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice onDaemonConnected:otg path is registered? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    if-nez v14, :cond_b

    .line 1629
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:add volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    :cond_b
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice onDaemonConnected:after mVolumes size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_10

    .line 1635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1634
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1604
    .end local v2    # "usbotgVolume":Landroid/os/storage/StorageVolume;
    .end local v14    # "bPathIncluded":Z
    .end local v18    # "i":I
    .end local v23    # "size":I
    :cond_c
    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_d

    .line 1605
    :try_start_7
    const-string v25, "unmounted"

    goto/16 :goto_3

    .line 1606
    :cond_d
    const/4 v3, 0x4

    move/from16 v0, v24

    if-ne v0, v3, :cond_e

    .line 1607
    const-string v25, "mounted"

    .line 1608
    const-string v3, "MountService"

    const-string v4, "Media already mounted on daemon connection"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1609
    :cond_e
    const/4 v3, 0x7

    move/from16 v0, v24

    if-ne v0, v3, :cond_f

    .line 1610
    const-string v25, "shared"

    .line 1611
    const-string v3, "MountService"

    const-string v4, "Media shared on daemon connection"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1613
    :cond_f
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Unexpected state %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1637
    .restart local v2    # "usbotgVolume":Landroid/os/storage/StorageVolume;
    .restart local v14    # "bPathIncluded":Z
    .restart local v18    # "i":I
    .restart local v23    # "size":I
    :cond_10
    :try_start_8
    monitor-exit v30
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1638
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, v25

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v3, v2, v0}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 1637
    .end local v2    # "usbotgVolume":Landroid/os/storage/StorageVolume;
    .end local v14    # "bPathIncluded":Z
    .end local v18    # "i":I
    .end local v23    # "size":I
    :catchall_1
    move-exception v3

    :try_start_a
    monitor-exit v30
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v3

    .line 1640
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v3, v0, v1}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1643
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v3, v0, v1}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_2
.end method
