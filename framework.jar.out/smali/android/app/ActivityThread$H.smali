.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final BACKGROUND_VISIBLE_BEHIND_CHANGED:I = 0x94

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CANCEL_VISIBLE_BEHIND:I = 0x93

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final INSTALL_PROVIDER:I = 0x91

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOW_MEMORY:I = 0x7c

.field public static final NEW_INTENT:I = 0x70

.field public static final ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final REQUEST_THUMBNAIL:I = 0x75

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CLEAN_ACTIVITY_STATE_LENOVO_TRANSACTION:I = 0x119

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    .prologue
    .line 1289
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ActivityThread;
    .param p2, "x1"    # Landroid/app/ActivityThread$1;

    .prologue
    .line 1289
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private maybeSnapshot()V
    .locals 8

    .prologue
    .line 1729
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1732
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1733
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1735
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1736
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1737
    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1740
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1741
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_2

    .line 1742
    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid PackageManager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1747
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1748
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot get package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1750
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    goto :goto_0

    .line 1745
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1347
    sget-boolean v0, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v0, :cond_0

    .line 1348
    sparse-switch p1, :sswitch_data_0

    .line 1405
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1349
    :sswitch_0
    const-string v0, "ACT-LAUNCH_ACTIVITY"

    goto :goto_0

    .line 1350
    :sswitch_1
    const-string v0, "ACT-PAUSE_ACTIVITY"

    goto :goto_0

    .line 1351
    :sswitch_2
    const-string v0, "ACT-PAUSE_ACTIVITY_FINISHING"

    goto :goto_0

    .line 1352
    :sswitch_3
    const-string v0, "ACT-STOP_ACTIVITY_SHOW"

    goto :goto_0

    .line 1353
    :sswitch_4
    const-string v0, "ACT-STOP_ACTIVITY_HIDE"

    goto :goto_0

    .line 1354
    :sswitch_5
    const-string v0, "ACT-SHOW_WINDOW"

    goto :goto_0

    .line 1355
    :sswitch_6
    const-string v0, "ACT-HIDE_WINDOW"

    goto :goto_0

    .line 1356
    :sswitch_7
    const-string v0, "ACT-RESUME_ACTIVITY"

    goto :goto_0

    .line 1357
    :sswitch_8
    const-string v0, "SEND_RESULT"

    goto :goto_0

    .line 1358
    :sswitch_9
    const-string v0, "ACT-DESTROY_ACTIVITY"

    goto :goto_0

    .line 1359
    :sswitch_a
    const-string v0, "BIND_APPLICATION"

    goto :goto_0

    .line 1360
    :sswitch_b
    const-string v0, "EXIT_APPLICATION"

    goto :goto_0

    .line 1361
    :sswitch_c
    const-string v0, "ACT-NEW_INTENT"

    goto :goto_0

    .line 1362
    :sswitch_d
    const-string v0, "BDC-RECEIVER"

    goto :goto_0

    .line 1363
    :sswitch_e
    const-string v0, "SVC-CREATE_SERVICE"

    goto :goto_0

    .line 1364
    :sswitch_f
    const-string v0, "SVC-SERVICE_ARGS"

    goto :goto_0

    .line 1365
    :sswitch_10
    const-string v0, "SVC-STOP_SERVICE"

    goto :goto_0

    .line 1366
    :sswitch_11
    const-string v0, "REQUEST_THUMBNAIL"

    goto :goto_0

    .line 1367
    :sswitch_12
    const-string v0, "CONFIGURATION_CHANGED"

    goto :goto_0

    .line 1368
    :sswitch_13
    const-string v0, "CLEAN_UP_CONTEXT"

    goto :goto_0

    .line 1369
    :sswitch_14
    const-string v0, "GC_WHEN_IDLE"

    goto :goto_0

    .line 1370
    :sswitch_15
    const-string v0, "SVC-BIND_SERVICE"

    goto :goto_0

    .line 1371
    :sswitch_16
    const-string v0, "SVC-UNBIND_SERVICE"

    goto :goto_0

    .line 1372
    :sswitch_17
    const-string v0, "SVC-DUMP_SERVICE"

    goto :goto_0

    .line 1373
    :sswitch_18
    const-string v0, "LOW_MEMORY"

    goto :goto_0

    .line 1374
    :sswitch_19
    const-string v0, "ACT-ACTIVITY_CONFIGURATION_CHANGED"

    goto :goto_0

    .line 1375
    :sswitch_1a
    const-string v0, "ACT-RELAUNCH_ACTIVITY"

    goto :goto_0

    .line 1376
    :sswitch_1b
    const-string v0, "PROFILER_CONTROL"

    goto :goto_0

    .line 1377
    :sswitch_1c
    const-string v0, "CREATE_BACKUP_AGENT"

    goto :goto_0

    .line 1378
    :sswitch_1d
    const-string v0, "DESTROY_BACKUP_AGENT"

    goto :goto_0

    .line 1379
    :sswitch_1e
    const-string v0, "SUICIDE"

    goto :goto_0

    .line 1380
    :sswitch_1f
    const-string v0, "REMOVE_PROVIDER"

    goto :goto_0

    .line 1381
    :sswitch_20
    const-string v0, "ENABLE_JIT"

    goto :goto_0

    .line 1382
    :sswitch_21
    const-string v0, "DISPATCH_PACKAGE_BROADCAST"

    goto :goto_0

    .line 1383
    :sswitch_22
    const-string v0, "SCHEDULE_CRASH"

    goto :goto_0

    .line 1384
    :sswitch_23
    const-string v0, "DUMP_HEAP"

    goto :goto_0

    .line 1385
    :sswitch_24
    const-string v0, "DUMP_ACTIVITY"

    goto :goto_0

    .line 1386
    :sswitch_25
    const-string v0, "SLEEPING"

    goto :goto_0

    .line 1387
    :sswitch_26
    const-string v0, "SET_CORE_SETTINGS"

    goto :goto_0

    .line 1388
    :sswitch_27
    const-string v0, "UPDATE_PACKAGE_COMPATIBILITY_INFO"

    goto :goto_0

    .line 1389
    :sswitch_28
    const-string v0, "TRIM_MEMORY"

    goto :goto_0

    .line 1390
    :sswitch_29
    const-string v0, "DUMP_PROVIDER"

    goto :goto_0

    .line 1391
    :sswitch_2a
    const-string v0, "UNSTABLE_PROVIDER_DIED"

    goto/16 :goto_0

    .line 1392
    :sswitch_2b
    const-string v0, "REQUEST_ASSIST_CONTEXT_EXTRAS"

    goto/16 :goto_0

    .line 1393
    :sswitch_2c
    const-string v0, "TRANSLUCENT_CONVERSION_COMPLETE"

    goto/16 :goto_0

    .line 1394
    :sswitch_2d
    const-string v0, "INSTALL_PROVIDER"

    goto/16 :goto_0

    .line 1395
    :sswitch_2e
    const-string v0, "ON_NEW_ACTIVITY_OPTIONS"

    goto/16 :goto_0

    .line 1396
    :sswitch_2f
    const-string v0, "CANCEL_VISIBLE_BEHIND"

    goto/16 :goto_0

    .line 1397
    :sswitch_30
    const-string v0, "BACKGROUND_VISIBLE_BEHIND_CHANGED"

    goto/16 :goto_0

    .line 1398
    :sswitch_31
    const-string v0, "ENTER_ANIMATION_COMPLETE"

    goto/16 :goto_0

    .line 1400
    :sswitch_32
    const-string v0, "SCHEDULE_CLEAN_ACTIVITY_STATE_LENOVO_TRANSACTION"

    goto/16 :goto_0

    .line 1348
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6a -> :sswitch_6
        0x6b -> :sswitch_7
        0x6c -> :sswitch_8
        0x6d -> :sswitch_9
        0x6e -> :sswitch_a
        0x6f -> :sswitch_b
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_e
        0x73 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
        0x76 -> :sswitch_12
        0x77 -> :sswitch_13
        0x78 -> :sswitch_14
        0x79 -> :sswitch_15
        0x7a -> :sswitch_16
        0x7b -> :sswitch_17
        0x7c -> :sswitch_18
        0x7d -> :sswitch_19
        0x7e -> :sswitch_1a
        0x7f -> :sswitch_1b
        0x80 -> :sswitch_1c
        0x81 -> :sswitch_1d
        0x82 -> :sswitch_1e
        0x83 -> :sswitch_1f
        0x84 -> :sswitch_20
        0x85 -> :sswitch_21
        0x86 -> :sswitch_22
        0x87 -> :sswitch_23
        0x88 -> :sswitch_24
        0x89 -> :sswitch_25
        0x8a -> :sswitch_26
        0x8b -> :sswitch_27
        0x8c -> :sswitch_28
        0x8d -> :sswitch_29
        0x8e -> :sswitch_2a
        0x8f -> :sswitch_2b
        0x90 -> :sswitch_2c
        0x91 -> :sswitch_2d
        0x92 -> :sswitch_2e
        0x93 -> :sswitch_2f
        0x94 -> :sswitch_30
        0x95 -> :sswitch_31
        0x119 -> :sswitch_32
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1465
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1721
    :goto_0
    sget-boolean v0, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$H;->isDebuggableMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1722
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    :cond_0
    return-void

    .line 1468
    :sswitch_0
    const/4 v0, 0x1

    sget-boolean v1, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-ne v0, v1, :cond_1

    sget-boolean v0, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/app/ActivityThread;->mTraceEnabled:Z

    if-nez v0, :cond_1

    .line 1470
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    const-string v0, "/proc/mtprof/status"

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v9, "fprofsts_in":Ljava/io/FileInputStream;
    invoke-virtual {v9}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_1

    .line 1472
    const-string v0, "ActivityThread"

    const-string/jumbo v1, "start Profiling for empty process"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/ActivityThread;->mTraceEnabled:Z

    .line 1474
    const-string v0, "/data/data/applaunch"

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1483
    .end local v9    # "fprofsts_in":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    const-wide/16 v0, 0x1040

    const-string v2, "activityStart"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1484
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1486
    .local v11, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v11, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v11, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v11, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 1488
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    # invokes: Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    invoke-static {v0, v11, v1}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    .line 1489
    const-wide/16 v0, 0x1040

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1476
    .end local v11    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :catch_0
    move-exception v8

    .line 1477
    .local v8, "e":Ljava/io/FileNotFoundException;
    const-string v0, "ActivityThread"

    const-string/jumbo v1, "mtprof entry can not be found"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1478
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    .line 1479
    .local v8, "e":Ljava/io/IOException;
    const-string v0, "ActivityThread"

    const-string/jumbo v1, "mtprof entry open failed"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1492
    .end local v8    # "e":Ljava/io/IOException;
    :sswitch_1
    const-wide/16 v0, 0x40

    const-string v2, "activityRestart"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1493
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1494
    .restart local v11    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    # invokes: Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    invoke-static {v0, v11}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 1495
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1500
    .end local v11    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :sswitch_2
    const-wide/16 v0, 0x40

    const-string v2, "cleanActivityState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1501
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    # invokes: Landroid/app/ActivityThread;->handleCleanActivityStateLenovo(Landroid/os/IBinder;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1503
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1507
    :sswitch_3
    const-wide/16 v0, 0x40

    const-string v2, "activityPause"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1508
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    iget v4, p1, Landroid/os/Message;->arg2:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_3
    # invokes: Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZIZ)V
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->access$1100(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZ)V

    .line 1510
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1511
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1508
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 1514
    :sswitch_4
    const-wide/16 v0, 0x40

    const-string v2, "activityPause"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1515
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    const/4 v2, 0x1

    iget v3, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_4
    iget v4, p1, Landroid/os/Message;->arg2:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_5
    # invokes: Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZIZ)V
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->access$1100(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZ)V

    .line 1517
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1515
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    goto :goto_5

    .line 1520
    :sswitch_5
    const-wide/16 v0, 0x40

    const-string v2, "activityStop"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1521
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    const/4 v2, 0x1

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityThread;->access$1200(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1522
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1525
    :sswitch_6
    const-wide/16 v0, 0x40

    const-string v2, "activityStop"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1526
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityThread;->access$1200(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1527
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1530
    :sswitch_7
    const-wide/16 v0, 0x40

    const-string v2, "activityShowWindow"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1531
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    const/4 v2, 0x1

    # invokes: Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V
    invoke-static {v1, v0, v2}, Landroid/app/ActivityThread;->access$1300(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1532
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1535
    :sswitch_8
    const-wide/16 v0, 0x40

    const-string v2, "activityHideWindow"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1536
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    const/4 v2, 0x0

    # invokes: Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V
    invoke-static {v1, v0, v2}, Landroid/app/ActivityThread;->access$1300(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1537
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1540
    :sswitch_9
    const-wide/16 v0, 0x1040

    const-string v2, "activityResume"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1541
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    const/4 v3, 0x1

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_6
    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZ)V

    .line 1542
    const-wide/16 v0, 0x1040

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1541
    :cond_6
    const/4 v1, 0x0

    goto :goto_6

    .line 1545
    :sswitch_a
    const-wide/16 v0, 0x40

    const-string v2, "activityDeliverResult"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1546
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ResultData;

    # invokes: Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$1400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    .line 1547
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1550
    :sswitch_b
    const-wide/16 v0, 0x40

    const-string v2, "activityDestroy"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1551
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_7
    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, 0x0

    # invokes: Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    invoke-static {v2, v0, v1, v3, v4}, Landroid/app/ActivityThread;->access$1500(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    .line 1553
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1551
    :cond_7
    const/4 v1, 0x0

    goto :goto_7

    .line 1556
    :sswitch_c
    const-wide/16 v0, 0x40

    const-string v2, "bindApplication"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1557
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/app/ActivityThread$AppBindData;

    .line 1558
    .local v7, "data":Landroid/app/ActivityThread$AppBindData;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    # invokes: Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    invoke-static {v0, v7}, Landroid/app/ActivityThread;->access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 1559
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1562
    .end local v7    # "data":Landroid/app/ActivityThread$AppBindData;
    :sswitch_d
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_8

    .line 1563
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    .line 1565
    :cond_8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 1568
    :sswitch_e
    const-wide/16 v0, 0x40

    const-string v2, "activityNewIntent"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1569
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$NewIntentData;

    # invokes: Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$1700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    .line 1570
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1573
    :sswitch_f
    const-wide/16 v0, 0x40

    const-string v2, "broadcastReceiveComp"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1574
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ReceiverData;

    # invokes: Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$1800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    .line 1575
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1576
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1579
    :sswitch_10
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "serviceCreate"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1580
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    # invokes: Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$1900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    .line 1581
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1584
    :sswitch_11
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "serviceBind"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1585
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$BindServiceData;

    # invokes: Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$2000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1586
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1589
    :sswitch_12
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "serviceUnbind"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1590
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$BindServiceData;

    # invokes: Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$2100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1591
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1594
    :sswitch_13
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "serviceStart"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1595
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ServiceArgsData;

    # invokes: Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    .line 1596
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1599
    :sswitch_14
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "serviceStop"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1600
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    # invokes: Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$2300(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1601
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1602
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1605
    :sswitch_15
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "requestThumbnail"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1606
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    # invokes: Landroid/app/ActivityThread;->handleRequestThumbnail(Landroid/os/IBinder;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$2400(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1607
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1610
    :sswitch_16
    const-wide/16 v0, 0x40

    const-string v2, "configChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1611
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, v1, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 1612
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Configuration;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 1613
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1616
    :sswitch_17
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 1617
    .local v6, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v0, v6, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v1, v6, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v2, v6, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1620
    .end local v6    # "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    :sswitch_18
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_0

    .line 1623
    :sswitch_19
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    # invokes: Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$2500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1626
    :sswitch_1a
    const-wide/16 v0, 0x40

    const-string v2, "lowMemory"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1627
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 1628
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1631
    :sswitch_1b
    const-wide/16 v0, 0x40

    const-string v2, "activityConfigChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1632
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/os/IBinder;)V

    .line 1633
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1636
    :sswitch_1c
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    move v1, v0

    :goto_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ProfilerInfo;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    goto :goto_8

    .line 1639
    :sswitch_1d
    const-wide/16 v0, 0x40

    const-string v2, "backupCreateAgent"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1640
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    # invokes: Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1641
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1644
    :sswitch_1e
    const-wide/16 v0, 0x40

    const-string v2, "backupDestroyAgent"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1645
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    # invokes: Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$2700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1646
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1649
    :sswitch_1f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 1652
    :sswitch_20
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "providerRemove"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1653
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 1654
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1657
    :sswitch_21
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto/16 :goto_0

    .line 1660
    :sswitch_22
    const-wide/16 v0, 0x40

    const-string v2, "broadcastPackage"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1661
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 1662
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1665
    :sswitch_23
    new-instance v1, Landroid/app/RemoteServiceException;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1667
    :sswitch_24
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    move v1, v0

    :goto_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_9

    .line 1670
    :sswitch_25
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    # invokes: Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$2800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1673
    :sswitch_26
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    # invokes: Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$2900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1676
    :sswitch_27
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "sleeping"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1677
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_a
    # invokes: Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V
    invoke-static {v2, v0, v1}, Landroid/app/ActivityThread;->access$3000(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1678
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1677
    :cond_b
    const/4 v1, 0x0

    goto :goto_a

    .line 1681
    :sswitch_28
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "setCoreSettings"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1682
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    # invokes: Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$3100(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 1683
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1686
    :sswitch_29
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    # invokes: Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$3200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_0

    .line 1689
    :sswitch_2a
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "trimMemory"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1690
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    .line 1691
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1694
    :sswitch_2b
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    .line 1697
    :sswitch_2c
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    goto/16 :goto_0

    .line 1700
    :sswitch_2d
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    const/4 v1, 0x1

    :goto_b
    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    goto :goto_b

    .line 1703
    :sswitch_2e
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto/16 :goto_0

    .line 1706
    :sswitch_2f
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/util/Pair;

    .line 1707
    .local v10, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityOptions;

    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 1710
    .end local v10    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    :sswitch_30
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleCancelVisibleBehind(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1713
    :sswitch_31
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_d

    const/4 v1, 0x1

    :goto_c
    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->handleOnBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x0

    goto :goto_c

    .line 1716
    :sswitch_32
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    # invokes: Landroid/app/ActivityThread;->handleEnterAnimationComplete(Landroid/os/IBinder;)V
    invoke-static {v1, v0}, Landroid/app/ActivityThread;->access$3300(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1465
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6d -> :sswitch_b
        0x6e -> :sswitch_c
        0x6f -> :sswitch_d
        0x70 -> :sswitch_e
        0x71 -> :sswitch_f
        0x72 -> :sswitch_10
        0x73 -> :sswitch_13
        0x74 -> :sswitch_14
        0x75 -> :sswitch_15
        0x76 -> :sswitch_16
        0x77 -> :sswitch_17
        0x78 -> :sswitch_18
        0x79 -> :sswitch_11
        0x7a -> :sswitch_12
        0x7b -> :sswitch_19
        0x7c -> :sswitch_1a
        0x7d -> :sswitch_1b
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1c
        0x80 -> :sswitch_1d
        0x81 -> :sswitch_1e
        0x82 -> :sswitch_1f
        0x83 -> :sswitch_20
        0x84 -> :sswitch_21
        0x85 -> :sswitch_22
        0x86 -> :sswitch_23
        0x87 -> :sswitch_24
        0x88 -> :sswitch_25
        0x89 -> :sswitch_27
        0x8a -> :sswitch_28
        0x8b -> :sswitch_29
        0x8c -> :sswitch_2a
        0x8d -> :sswitch_26
        0x8e -> :sswitch_2b
        0x8f -> :sswitch_2c
        0x90 -> :sswitch_2d
        0x91 -> :sswitch_2e
        0x92 -> :sswitch_2f
        0x93 -> :sswitch_30
        0x94 -> :sswitch_31
        0x95 -> :sswitch_32
        0x119 -> :sswitch_2
    .end sparse-switch
.end method

.method isDebuggableMessage(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1410
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 1458
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 1428
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 1429
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1430
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 1431
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 1434
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 1438
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 1439
    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 1440
    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 1441
    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 1442
    goto :goto_0

    :pswitch_b
    move v0, v1

    .line 1443
    goto :goto_0

    :pswitch_c
    move v0, v1

    .line 1444
    goto :goto_0

    :pswitch_d
    move v0, v1

    .line 1445
    goto :goto_0

    :pswitch_e
    move v0, v1

    .line 1446
    goto :goto_0

    :pswitch_f
    move v0, v1

    .line 1447
    goto :goto_0

    :pswitch_10
    move v0, v1

    .line 1448
    goto :goto_0

    :pswitch_11
    move v0, v1

    .line 1449
    goto :goto_0

    :pswitch_12
    move v0, v1

    .line 1450
    goto :goto_0

    :pswitch_13
    move v0, v1

    .line 1451
    goto :goto_0

    :pswitch_14
    move v0, v1

    .line 1452
    goto :goto_0

    :pswitch_15
    move v0, v1

    .line 1453
    goto :goto_0

    :pswitch_16
    move v0, v1

    .line 1454
    goto :goto_0

    :pswitch_17
    move v0, v1

    .line 1455
    goto :goto_0

    :pswitch_18
    move v0, v1

    .line 1456
    goto :goto_0

    .line 1410
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
