.class public Lcom/mediatek/bluetooth/BleProximityProfileService;
.super Lcom/mediatek/bluetooth/BleProfileService;
.source "BleProximityProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    }
.end annotation


# static fields
.field public static final ACTION_ALERT_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.bluetooth.action.ALERT_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final INVALID_PATH_LOSS:I = -0x3e7

.field public static final RANGE_ALERT_RANGE_FAR:I = 0x2

.field public static final RANGE_ALERT_RANGE_MIDDLE:I = 0x1

.field public static final RANGE_ALERT_RANGE_NEAR:I = 0x0

.field private static final RANGE_ALERT_THRESH_FAR:I = 0x46

.field private static final RANGE_ALERT_THRESH_MIDDLE:I = 0x41

.field private static final RANGE_ALERT_THRESH_NEAR:I = 0x3c

.field public static final RANGE_ALERT_TYPE_IN:I = 0x0

.field public static final RANGE_ALERT_TYPE_OUT:I = 0x1

.field public static final STATE_DISCONNECTED_ALERT:I = 0x1

.field public static final STATE_IN_RANGE_ALERT:I = 0x2

.field public static final STATE_NO_ALERT:I = 0x0

.field public static final STATE_OUT_RANGE_ALERT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BleProximityProfileService"

.field private static final VDBG:Z = true


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

.field private mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BleProfileService;-><init>()V

    .line 254
    new-instance v0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BleProximityProfileService$1;-><init>(Lcom/mediatek/bluetooth/BleProximityProfileService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mConnection:Landroid/content/ServiceConnection;

    .line 280
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mContext:Landroid/content/Context;

    .line 281
    iput-object p2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    .line 282
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BleProximityProfileService;->doBind()Z

    .line 283
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/BleProximityProfileService;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleProximityProfileService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/BleProximityProfileService;Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleProximityProfileService;
    .param p1, "x1"    # Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/BleProximityProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleProximityProfileService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    return-object v0
.end method

.method public static getRangeAlertThreshold(I)I
    .locals 3
    .param p0, "alertRange"    # I

    .prologue
    .line 170
    const-string v0, "BleProximityProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRangeAlertThreshold: alertRange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    packed-switch p0, :pswitch_data_0

    .line 182
    const-string v0, "BleProximityProfileService"

    const-string v1, "Invalid range! Return INVALID_PATH_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v0, -0x3e7

    :goto_0
    return v0

    .line 173
    :pswitch_0
    const/16 v0, 0x3c

    goto :goto_0

    .line 176
    :pswitch_1
    const/16 v0, 0x41

    goto :goto_0

    .line 179
    :pswitch_2
    const/16 v0, 0x46

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 286
    const-string v1, "BleProximityProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", proxy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 291
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    .line 292
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    iput-object v4, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    .line 299
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "BleProximityProfileService"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method doBind()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 302
    const-string v2, "BleProximityProfileService"

    const-string v3, "doBind"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.bluetoothle"

    const-string v3, "com.mediatek.bluetoothle.pxp.ProximityProfileService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    const-string v2, "BleProximityProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not bind to ProximityProfileService with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPathLoss(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 322
    const/16 v1, -0x3e7

    .line 324
    .local v1, "pathLoss":I
    const-string v3, "BleProximityProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPathLoss: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-nez v3, :cond_0

    .line 327
    const-string v3, "BleProximityProfileService"

    const-string v4, "getPathLoss: mService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 338
    .end local v1    # "pathLoss":I
    .local v2, "pathLoss":I
    :goto_0
    return v2

    .line 332
    .end local v2    # "pathLoss":I
    .restart local v1    # "pathLoss":I
    :cond_0
    :try_start_0
    const-string v3, "BleProximityProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPathLoss: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    invoke-interface {v3, p1}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;->getPathLoss(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 334
    const-string v3, "BleProximityProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path loss = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v1

    .line 338
    .end local v1    # "pathLoss":I
    .restart local v2    # "pathLoss":I
    goto :goto_0

    .line 335
    .end local v2    # "pathLoss":I
    .restart local v1    # "pathLoss":I
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BleProximityProfileService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPxpParameters(Landroid/bluetooth/BluetoothDevice;)Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    .locals 18
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 427
    const/16 v17, 0x0

    .line 428
    .local v17, "success":Z
    const/4 v8, 0x0

    .line 429
    .local v8, "params":Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    const/4 v1, 0x1

    new-array v3, v1, [I

    .line 430
    .local v3, "alertEnabler":[I
    const/4 v1, 0x1

    new-array v4, v1, [I

    .line 431
    .local v4, "rangeAlertEnabler":[I
    const/4 v1, 0x1

    new-array v5, v1, [I

    .line 432
    .local v5, "rangeType":[I
    const/4 v1, 0x1

    new-array v6, v1, [I

    .line 433
    .local v6, "rangeValue":[I
    const/4 v1, 0x1

    new-array v7, v1, [I

    .line 435
    .local v7, "disconnectEnabler":[I
    const-string v1, "BleProximityProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPxpParameters:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-nez v1, :cond_0

    .line 438
    const-string v1, "BleProximityProfileService"

    const-string v2, "getPxpParameters: mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v8

    .line 455
    .end local v8    # "params":Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    .local v16, "params":Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    :goto_0
    return-object v16

    .line 443
    .end local v16    # "params":Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    .restart local v8    # "params":Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    :cond_0
    :try_start_0
    const-string v1, "BleProximityProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPxpParameters:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;->getPxpParameters(Landroid/bluetooth/BluetoothDevice;[I[I[I[I[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 450
    :goto_1
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_1

    .line 451
    new-instance v8, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;

    .end local v8    # "params":Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    const/4 v1, 0x0

    aget v10, v3, v1

    const/4 v1, 0x0

    aget v11, v4, v1

    const/4 v1, 0x0

    aget v12, v5, v1

    const/4 v1, 0x0

    aget v13, v6, v1

    const/4 v1, 0x0

    aget v14, v7, v1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;-><init>(Lcom/mediatek/bluetooth/BleProximityProfileService;IIIII)V

    .restart local v8    # "params":Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    :cond_1
    move-object/from16 v16, v8

    .line 455
    .end local v8    # "params":Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    .restart local v16    # "params":Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    goto :goto_0

    .line 446
    .end local v16    # "params":Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    .restart local v8    # "params":Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    :catch_0
    move-exception v15

    .line 447
    .local v15, "e":Landroid/os/RemoteException;
    const-string v1, "BleProximityProfileService"

    invoke-virtual {v15}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isAlertOn(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 350
    const/4 v1, 0x0

    .line 352
    .local v1, "isAlertOn":Z
    const-string v3, "BleProximityProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAlertOn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-nez v3, :cond_0

    .line 355
    const-string v3, "BleProximityProfileService"

    const-string v4, "isAlertOn: mService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 366
    .end local v1    # "isAlertOn":Z
    .local v2, "isAlertOn":I
    :goto_0
    return v2

    .line 360
    .end local v2    # "isAlertOn":I
    .restart local v1    # "isAlertOn":Z
    :cond_0
    :try_start_0
    const-string v3, "BleProximityProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAlertOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    invoke-interface {v3, p1}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;->isAlertOn(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 362
    const-string v3, "BleProximityProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alerting level"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v1

    .line 366
    .restart local v2    # "isAlertOn":I
    goto :goto_0

    .line 363
    .end local v2    # "isAlertOn":I
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BleProximityProfileService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerStatusChangeCallback(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "callback"    # Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;

    .prologue
    .line 467
    const/4 v1, 0x0

    .line 469
    .local v1, "result":Z
    const-string v3, "BleProximityProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerStatusChangeCallback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-nez v3, :cond_0

    .line 472
    const-string v3, "BleProximityProfileService"

    const-string v4, "registerStatusChangeCallback: mService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 484
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 477
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;->registerStatusChangeCallback(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 482
    :goto_1
    const-string v3, "BleProximityProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerStatusChangeCallback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 484
    .restart local v2    # "result":I
    goto :goto_0

    .line 478
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BleProximityProfileService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setPxpParameters(Landroid/bluetooth/BluetoothDevice;IIIII)Z
    .locals 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "alertEnabler"    # I
    .param p3, "rangeAlertEnabler"    # I
    .param p4, "rangeType"    # I
    .param p5, "rangeValue"    # I
    .param p6, "disconnectEnabler"    # I

    .prologue
    .line 403
    const/4 v8, 0x0

    .line 405
    .local v8, "success":Z
    const-string v0, "BleProximityProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPxpParameters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-nez v0, :cond_0

    .line 408
    const-string v0, "BleProximityProfileService"

    const-string v1, "setPxpParameters: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 420
    .end local v8    # "success":Z
    .local v9, "success":I
    :goto_0
    return v9

    .line 413
    .end local v9    # "success":I
    .restart local v8    # "success":Z
    :cond_0
    :try_start_0
    const-string v0, "BleProximityProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPxpParameters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;->setPxpParameters(Landroid/bluetooth/BluetoothDevice;IIIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :goto_1
    move v9, v8

    .line 420
    .restart local v9    # "success":I
    goto :goto_0

    .line 416
    .end local v9    # "success":I
    :catch_0
    move-exception v7

    .line 417
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "BleProximityProfileService"

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopRemoteAlert(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 380
    .local v1, "success":Z
    const-string v3, "BleProximityProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopRemoteAlert:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-nez v3, :cond_0

    .line 383
    const-string v3, "BleProximityProfileService"

    const-string v4, "stopRemoteAlert: mService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 394
    .end local v1    # "success":Z
    .local v2, "success":I
    :goto_0
    return v2

    .line 388
    .end local v2    # "success":I
    .restart local v1    # "success":Z
    :cond_0
    :try_start_0
    const-string v3, "BleProximityProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopRemoteAlert:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    invoke-interface {v3, p1}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;->stopRemoteAlert(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 394
    .restart local v2    # "success":I
    goto :goto_0

    .line 390
    .end local v2    # "success":I
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BleProximityProfileService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public unregisterStatusChangeCallback(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "callback"    # Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;

    .prologue
    .line 496
    const/4 v1, 0x0

    .line 498
    .local v1, "result":Z
    const-string v3, "BleProximityProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterStatusChangeCallback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-nez v3, :cond_0

    .line 501
    const-string v3, "BleProximityProfileService"

    const-string v4, "unregisterStatusChangeCallback: mService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 513
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 506
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    invoke-interface {v3, p1, p2}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;->unregisterStatusChangeCallback(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 511
    :goto_1
    const-string v3, "BleProximityProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterStatusChangeCallback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 513
    .restart local v2    # "result":I
    goto :goto_0

    .line 507
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BleProximityProfileService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
