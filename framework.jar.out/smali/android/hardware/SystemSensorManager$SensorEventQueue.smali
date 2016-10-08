.class final Landroid/hardware/SystemSensorManager$SensorEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventQueue"
.end annotation


# instance fields
.field private final FakeData:[[F

.field private mCnt:I

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mSensorsEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 414
    invoke-direct {p0, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V

    .line 403
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    .line 405
    const/16 v0, 0xe

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->FakeData:[[F

    .line 410
    iput v4, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mCnt:I

    .line 415
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    .line 416
    return-void

    .line 405
    nop

    :array_0
    .array-data 4
        0x3f89374c    # 1.072f
        0x40d2d917    # 6.589f
        0x40fa0c4a    # 7.814f
    .end array-data

    :array_1
    .array-data 4
        0x3f89374c    # 1.072f
        0x40dca3d7    # 6.895f
        0x40dca3d7    # 6.895f
    .end array-data

    :array_2
    .array-data 4
        0x401cdd2f    # 2.451f
        0x41094bc7    # 8.581f
        0x40cdeb85    # 6.435f
    .end array-data

    :array_3
    .array-data 4
        -0x3f4a978d    # -5.669f
        0x40a1cac1    # 5.056f
        0x400947ae    # 2.145f
    .end array-data

    :array_4
    .array-data 4
        0x419f5c29    # 19.92f
        -0x3eaf9db2    # -13.024f
        0x416dced9    # 14.863f
    .end array-data

    :array_5
    .array-data 4
        -0x3f3bdf3b    # -6.129f
        -0x3f36f9db    # -6.282f
        0x3fd7ae14    # 1.685f
    .end array-data

    :array_6
    .array-data 4
        0x419f5c29    # 19.92f
        -0x40e353f8    # -0.612f
        0x419ce979    # 19.614f
    .end array-data

    :array_7
    .array-data 4
        -0x3ede3127    # -10.113f
        -0x3f235c29    # -6.895f
        -0x4114fdf4    # -0.459f
    .end array-data

    :array_8
    .array-data 4
        0x419f5c29    # 19.92f
        -0x3f4a978d    # -5.669f
        0x419ce979    # 19.614f
    .end array-data

    :array_9
    .array-data 4
        -0x3ebe51ec    # -12.105f
        -0x3ee80000    # -9.5f
        -0x3fa84189    # -3.371f
    .end array-data

    :array_a
    .array-data 4
        -0x3eb48312    # -12.718f
        0x3fc41893    # 1.532f
        -0x3ea5ced9    # -13.637f
    .end array-data

    :array_b
    .array-data 4
        0x3f1cac08    # 0.612f
        0x40ab9db2    # 5.363f
        0x40f04189    # 7.508f
    .end array-data

    :array_c
    .array-data 4
        0x40308312    # 2.758f
        0x40cdeb85    # 6.435f
        0x40e18937    # 7.048f
    .end array-data

    :array_d
    .array-data 4
        0x3fd7ae14    # 1.685f
        0x40ba4dd3    # 5.822f
        0x40fef9db    # 7.968f
    .end array-data
.end method


# virtual methods
.method public addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 420
    new-instance v0, Landroid/hardware/SensorEvent;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    # getter for: Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I
    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->access$100(Landroid/hardware/SystemSensorManager;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    .line 422
    .local v0, "t":Landroid/hardware/SensorEvent;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v2

    .line 423
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    monitor-exit v2

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dispatchFlushCompleteEvent(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 487
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    instance-of v1, v1, Landroid/hardware/SensorEventListener2;

    if-eqz v1, :cond_0

    .line 488
    # getter for: Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$000()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 489
    .local v0, "sensor":Landroid/hardware/Sensor;
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    check-cast v1, Landroid/hardware/SensorEventListener2;

    invoke-interface {v1, v0}, Landroid/hardware/SensorEventListener2;->onFlushCompleted(Landroid/hardware/Sensor;)V

    .line 491
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    return-void
.end method

.method protected dispatchSensorEvent(I[FIJ)V
    .locals 10
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "inAccuracy"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v9, 0x0

    .line 439
    # getter for: Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$000()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 440
    .local v4, "sensor":Landroid/hardware/Sensor;
    const/4 v5, 0x0

    .line 441
    .local v5, "t":Landroid/hardware/SensorEvent;
    iget-object v7, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v7

    .line 442
    :try_start_0
    iget-object v6, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/SensorEvent;

    move-object v5, v0

    .line 443
    monitor-exit v7

    .line 445
    if-nez v5, :cond_0

    .line 483
    :goto_0
    return-void

    .line 443
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 453
    :cond_0
    # getter for: Landroid/hardware/SystemSensorManager;->isSimulateShakeSupport:Z
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$200()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 454
    iget-object v6, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-virtual {v6}, Landroid/hardware/SystemSensorManager;->getSettingPkgName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 456
    iget-object v6, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->FakeData:[[F

    array-length v2, v6

    .line 457
    .local v2, "length":I
    iget v6, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mCnt:I

    if-lt v6, v2, :cond_1

    .line 458
    iput v9, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mCnt:I

    .line 462
    :cond_1
    iget-object v6, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->FakeData:[[F

    iget v7, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mCnt:I

    aget-object v3, v6, v7

    .line 463
    .local v3, "row":[F
    iget-object v6, v5, Landroid/hardware/SensorEvent;->values:[F

    iget-object v7, v5, Landroid/hardware/SensorEvent;->values:[F

    array-length v7, v7

    invoke-static {v3, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 472
    .end local v2    # "length":I
    .end local v3    # "row":[F
    :goto_1
    iput-wide p4, v5, Landroid/hardware/SensorEvent;->timestamp:J

    .line 473
    iput p3, v5, Landroid/hardware/SensorEvent;->accuracy:I

    .line 474
    iput-object v4, v5, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 477
    iget-object v6, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 478
    .local v1, "accuracy":I
    iget v6, v5, Landroid/hardware/SensorEvent;->accuracy:I

    if-ltz v6, :cond_2

    iget v6, v5, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v1, v6, :cond_2

    .line 479
    iget-object v6, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iget v7, v5, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 480
    iget-object v6, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v7, v5, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v8, v5, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-interface {v6, v7, v8}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 482
    :cond_2
    iget-object v6, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v6, v5}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 466
    .end local v1    # "accuracy":I
    :cond_3
    iget-object v6, v5, Landroid/hardware/SensorEvent;->values:[F

    iget-object v7, v5, Landroid/hardware/SensorEvent;->values:[F

    array-length v7, v7

    invoke-static {p2, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy([FI[FII)V

    goto :goto_1

    .line 469
    :cond_4
    iget-object v6, v5, Landroid/hardware/SensorEvent;->values:[F

    iget-object v7, v5, Landroid/hardware/SensorEvent;->values:[F

    array-length v7, v7

    invoke-static {p2, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy([FI[FII)V

    goto :goto_1
.end method

.method public removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 429
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v1

    .line 430
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 431
    monitor-exit v1

    .line 432
    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
