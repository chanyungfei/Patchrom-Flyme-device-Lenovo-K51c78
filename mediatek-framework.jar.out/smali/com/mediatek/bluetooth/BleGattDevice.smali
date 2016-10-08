.class public Lcom/mediatek/bluetooth/BleGattDevice;
.super Ljava/lang/Object;
.source "BleGattDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;,
        Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final GATT_FAILURE:I = 0x101

.field public static final GATT_INSUFFICIENT_AUTHENTICATION:I = 0x5

.field public static final GATT_INSUFFICIENT_ENCRYPTION:I = 0xf

.field public static final GATT_INVALID_ATTRIBUTE_LENGTH:I = 0xd

.field public static final GATT_INVALID_OFFSET:I = 0x7

.field public static final GATT_READ_NOT_PERMITTED:I = 0x2

.field public static final GATT_REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final GATT_SUCCESS:I = 0x0

.field public static final GATT_WRITE_NOT_PERMITTED:I = 0x3

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BleGattDevice"

.field private static final VDBG:Z = true


# instance fields
.field private mCallback:Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;

.field private mClientCB:Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

.field private mClientId:I

.field private mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

.field private final mDeviceOpenLock:Ljava/lang/Object;

.field private mProfileRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/bluetooth/BleProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/IBleDeviceManager;Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceManager"    # Lcom/mediatek/bluetooth/IBleDeviceManager;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "clientCB"    # Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceOpenLock:Ljava/lang/Object;

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    .line 166
    new-instance v0, Lcom/mediatek/bluetooth/BleGattDevice$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BleGattDevice$1;-><init>(Lcom/mediatek/bluetooth/BleGattDevice;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mCallback:Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;

    .line 299
    const-string v0, "BleGattDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BleGattDevice created. instance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Lcom/mediatek/bluetooth/BleGattDevice$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BleGattDevice$2;-><init>(Lcom/mediatek/bluetooth/BleGattDevice;)V

    invoke-direct {p0, p2, v0}, Lcom/mediatek/bluetooth/BleGattDevice;->linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 309
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mContext:Landroid/content/Context;

    .line 310
    iput-object p3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 311
    iput-object p4, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientCB:Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mProfileRegistry:Ljava/util/Map;

    .line 313
    iput-object p2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    .line 314
    new-instance v0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    invoke-direct {v0, p0, p2}, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;-><init>(Lcom/mediatek/bluetooth/BleGattDevice;Lcom/mediatek/bluetooth/IBleDeviceManager;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    .line 316
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BleGattDevice;->openProfileClients()V

    .line 317
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleGattDevice;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientCB:Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleGattDevice;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/BleGattDevice;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleGattDevice;

    .prologue
    .line 75
    iget v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/BleGattDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleGattDevice;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private closeProfileClients()V
    .locals 4

    .prologue
    .line 389
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mProfileRegistry:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 391
    .local v2, "profileClients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mediatek/bluetooth/BleProfile;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/BleProfile;

    .line 392
    .local v1, "profile":Lcom/mediatek/bluetooth/BleProfile;
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BleProfile;->close()V

    goto :goto_0

    .line 395
    .end local v1    # "profile":Lcom/mediatek/bluetooth/BleProfile;
    :cond_0
    return-void
.end method

.method private linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V
    .locals 4
    .param p1, "binderItf"    # Landroid/os/IInterface;
    .param p2, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .prologue
    .line 324
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 325
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v2, 0x0

    invoke-interface {v0, p2, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 326
    iput-object p2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BleGattDevice"

    const-string v3, "Unable to link deathRecipient for app"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openProfileClients()V
    .locals 8

    .prologue
    .line 375
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mProfileRegistry:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/mediatek/bluetooth/BleFindMeProfile;

    iget-object v6, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    invoke-direct {v5, v6, v7}, Lcom/mediatek/bluetooth/BleFindMeProfile;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/IBleGatt;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mProfileRegistry:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/mediatek/bluetooth/BleProximityProfile;

    iget-object v6, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    invoke-direct {v5, v6, v7}, Lcom/mediatek/bluetooth/BleProximityProfile;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/IBleGatt;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mProfileRegistry:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 382
    .local v2, "profileClients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mediatek/bluetooth/BleProfile;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/BleProfile;

    .line 383
    .local v1, "profile":Lcom/mediatek/bluetooth/BleProfile;
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BleProfile;->open()V

    goto :goto_0

    .line 386
    .end local v1    # "profile":Lcom/mediatek/bluetooth/BleProfile;
    :cond_0
    return-void
.end method


# virtual methods
.method public asProfileInterface(I)Lcom/mediatek/bluetooth/BleProfile;
    .locals 3
    .param p1, "profileId"    # I

    .prologue
    const/4 v0, 0x0

    .line 625
    const-string v1, "BleGattDevice"

    const-string v2, "asProfileInterface"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    if-nez v1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-object v0

    .line 635
    :cond_1
    if-nez p1, :cond_2

    .line 636
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mProfileRegistry:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/BleFindMeProfile;

    .line 638
    .local v0, "profileClient":Lcom/mediatek/bluetooth/BleFindMeProfile;
    goto :goto_0

    .line 641
    .end local v0    # "profileClient":Lcom/mediatek/bluetooth/BleFindMeProfile;
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mProfileRegistry:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/BleProximityProfile;

    .line 644
    .local v0, "profileClient":Lcom/mediatek/bluetooth/BleProximityProfile;
    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 483
    const-string v1, "BleGattDevice"

    const-string v2, "close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    if-nez v1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/IBleDeviceManager;->unregisterClient(I)V

    .line 492
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/BleGattDevice;->unlinkToDeath(Landroid/os/IInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BleGattDevice;->closeProfileClients()V

    .line 501
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientCB:Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

    .line 503
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BleGattDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public connect()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 438
    const-string v2, "BleGattDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    if-nez v2, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v1

    .line 445
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    iget-object v4, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3, v4}, Lcom/mediatek/bluetooth/IBleDeviceManager;->connectDevice(ILandroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BleGattDevice"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 461
    const-string v1, "BleGattDevice"

    const-string v2, "disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    if-nez v1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManager;->disconnectDevice(ILandroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BleGattDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public discoverServices()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 524
    const-string v2, "BleGattDevice"

    const-string v3, "discoverServices"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    if-nez v2, :cond_1

    .line 535
    :cond_0
    :goto_0
    return v1

    .line 532
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    iget-object v4, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3, v4}, Lcom/mediatek/bluetooth/IBleDeviceManager;->discoverServices(ILandroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BleGattDevice"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 598
    const-string v2, "BleGattDevice"

    const-string v3, "getService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v2, v3, v4}, Lcom/mediatek/bluetooth/IBleDeviceManager;->getService(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    move-result-object v1

    .line 604
    .local v1, "service":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    if-eqz v1, :cond_0

    .line 605
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->unpack()Landroid/bluetooth/BluetoothGattService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 612
    .end local v1    # "service":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    :goto_0
    return-object v2

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BleGattDevice"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getServices()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    const-string v5, "BleGattDevice"

    const-string v6, "getServices"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 559
    .local v4, "srvs":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget-object v6, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v5, v6}, Lcom/mediatek/bluetooth/IBleDeviceManager;->getServices(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v2

    .line 562
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;>;"
    if-eqz v2, :cond_0

    .line 563
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    .line 564
    .local v3, "srv":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    invoke-virtual {v3}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->unpack()Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 568
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;>;"
    .end local v3    # "srv":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "BleGattDevice"

    const-string v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getState()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 405
    const-string v2, "BleGattDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    if-nez v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v1

    .line 412
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    iget-object v4, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3, v4}, Lcom/mediatek/bluetooth/IBleDeviceManager;->getState(ILandroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method startListen()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 350
    const-string v3, "BleGattDevice"

    const-string v4, "startListen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceOpenLock:Ljava/lang/Object;

    monitor-enter v3

    .line 354
    :try_start_0
    iget v4, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    if-eqz v4, :cond_0

    .line 355
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :goto_0
    return v2

    .line 359
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 361
    .local v1, "uuid":Ljava/util/UUID;
    iget-object v4, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-direct {v5, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v6, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mCallback:Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;

    invoke-interface {v4, v5, v6, v7}, Lcom/mediatek/bluetooth/IBleDeviceManager;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;)I

    move-result v4

    iput v4, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :try_start_2
    monitor-exit v3

    .line 371
    const/4 v2, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "uuid":Ljava/util/UUID;
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "BleGattDevice"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    monitor-exit v3

    goto :goto_0

    .line 369
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method unlinkToDeath(Landroid/os/IInterface;)V
    .locals 4
    .param p1, "binderItf"    # Landroid/os/IInterface;

    .prologue
    .line 336
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v2, :cond_0

    .line 338
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 339
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "BleGattDevice"

    const-string v3, "Unable to unlink deathRecipient"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
