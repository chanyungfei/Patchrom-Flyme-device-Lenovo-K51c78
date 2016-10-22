.class public Lcom/mediatek/bluetooth/BleProfileServiceManager;
.super Ljava/lang/Object;
.source "BleProfileServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;
    }
.end annotation


# static fields
.field public static final ACTION_SERVER_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.bluetooth.bleprofileservermanager.state.changed"

.field private static final DBG:Z = true

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "com.mediatek.bluetooth.bleprofileservermanager.extra.PREVIOUS_STATE"

.field public static final EXTRA_PROFILE:Ljava/lang/String; = "com.mediatek.bluetooth.bleprofileservermanager.extra.PROFILE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "com.mediatek.bluetooth.bleprofileservermanager.extra.STATE"

.field public static final STATE_SERVER_IDLE:I = 0x0

.field public static final STATE_SERVER_REGISTERED:I = 0x2

.field public static final STATE_SERVER_REGISTERING:I = 0x1

.field public static final STATE_SERVER_UNKNOWN:I = 0x4

.field public static final STATUS_DISABLED:I = 0x0

.field public static final STATUS_ENABLED:I = 0x1

.field public static final STATUS_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BleProfileServiceManager"


# instance fields
.field private mCallback:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

.field private mServiceListener:Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lcom/mediatek/bluetooth/BleProfileServiceManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BleProfileServiceManager$1;-><init>(Lcom/mediatek/bluetooth/BleProfileServiceManager;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mCallback:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback;

    .line 373
    new-instance v0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;-><init>(Lcom/mediatek/bluetooth/BleProfileServiceManager;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mConnection:Landroid/content/ServiceConnection;

    .line 406
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mContext:Landroid/content/Context;

    .line 407
    iput-object p2, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;

    .line 408
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->doBind()Z

    .line 409
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/BleProfileServiceManager;Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;)Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleProfileServiceManager;
    .param p1, "x1"    # Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/BleProfileServiceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleProfileServiceManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->registerCallback()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/BleProfileServiceManager;)Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BleProfileServiceManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;

    return-object v0
.end method

.method private registerCallback()V
    .locals 4

    .prologue
    .line 163
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    if-eqz v1, :cond_0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mCallback:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback;

    invoke-interface {v1, v2}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;->registerCallback(Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BleProfileServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterCallback()V
    .locals 4

    .prologue
    .line 173
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    if-eqz v1, :cond_0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mCallback:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback;

    invoke-interface {v1, v2}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;->unregisterCallback(Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BleProfileServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 412
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 415
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->unregisterCallback()V

    .line 416
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    .line 417
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 423
    iput-object v4, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;

    .line 424
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_3
    const-string v1, "BleProfileServiceManager"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 422
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method doBind()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 428
    const-string v4, "BleProfileServiceManager"

    const-string v5, "doBind"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 432
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 433
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v1, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 434
    :cond_0
    const-string v2, "BleProfileServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to BleProfileManagerService with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 438
    :cond_1
    return v2
.end method

.method public getBackgroundMode()I
    .locals 5

    .prologue
    .line 286
    const/4 v1, 0x1

    .line 288
    .local v1, "nRet":I
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    if-nez v2, :cond_0

    .line 290
    const-string v2, "BleProfileServiceManager"

    const-string v3, "getBackgroundMode: null == mService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v2, -0x1

    .line 306
    :goto_0
    return v2

    .line 296
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    invoke-interface {v2}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;->isBackgroundModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 304
    :goto_1
    const-string v2, "BleProfileServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBackgroundMode: nRet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 306
    goto :goto_0

    .line 296
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 300
    const-string v2, "BleProfileServiceManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCurSupportedServerProfiles()[I
    .locals 5

    .prologue
    .line 188
    const/4 v3, 0x0

    new-array v1, v3, [I

    .line 190
    .local v1, "ids":[I
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    if-nez v3, :cond_0

    .line 192
    const-string v3, "BleProfileServiceManager"

    const-string v4, "getCurSupportedServerProfiles: null == mService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 206
    .end local v1    # "ids":[I
    .local v2, "ids":[I
    :goto_0
    return-object v2

    .line 199
    .end local v2    # "ids":[I
    .restart local v1    # "ids":[I
    :cond_0
    :try_start_0
    const-string v3, "BleProfileServiceManager"

    const-string v4, "getCurSupportedServerProfiles"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    invoke-interface {v3}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;->getCurSupportedServerProfiles()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 206
    .end local v1    # "ids":[I
    .restart local v2    # "ids":[I
    goto :goto_0

    .line 202
    .end local v2    # "ids":[I
    .restart local v1    # "ids":[I
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BleProfileServiceManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getProfileServerState(I)I
    .locals 5
    .param p1, "profile"    # I

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 220
    .local v1, "state":I
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    if-nez v2, :cond_0

    .line 222
    const-string v2, "BleProfileServiceManager"

    const-string v3, "getProfileServerState: null == mService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v2, 0x4

    .line 237
    :goto_0
    return v2

    .line 229
    :cond_0
    :try_start_0
    const-string v2, "BleProfileServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileServerState: profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    invoke-interface {v2, p1}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;->getProfileServerState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 237
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x4

    .line 234
    const-string v2, "BleProfileServiceManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public launchServices()Z
    .locals 6

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 321
    .local v1, "isExec":Z
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    if-nez v3, :cond_0

    .line 323
    const-string v3, "BleProfileServiceManager"

    const-string v4, "launchServices: null == mService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 338
    .end local v1    # "isExec":Z
    .local v2, "isExec":I
    :goto_0
    return v2

    .line 329
    .end local v2    # "isExec":I
    .restart local v1    # "isExec":Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    invoke-interface {v3}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;->launchServices()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 336
    :goto_1
    const-string v3, "BleProfileServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchServices: isExec="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 338
    .restart local v2    # "isExec":I
    goto :goto_0

    .line 330
    .end local v2    # "isExec":I
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 332
    const-string v3, "BleProfileServiceManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBackgroundMode(Z)Z
    .locals 5
    .param p1, "bEnabled"    # Z

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "bSuccess":Z
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    if-nez v2, :cond_0

    .line 256
    const-string v2, "BleProfileServiceManager"

    const-string v3, "setBackgroundMode: null == mService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v2, 0x0

    .line 272
    :goto_0
    return v2

    .line 262
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    invoke-interface {v2, p1}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;->setBackgroundMode(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 269
    :goto_1
    const-string v2, "BleProfileServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBackgroundMode: bEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",bSuccess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 272
    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 265
    const-string v2, "BleProfileServiceManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public shutdownServices()Z
    .locals 6

    .prologue
    .line 351
    const/4 v1, 0x0

    .line 353
    .local v1, "isExec":Z
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    if-nez v3, :cond_0

    .line 355
    const-string v3, "BleProfileServiceManager"

    const-string v4, "shutdownServices: null == mService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 370
    .end local v1    # "isExec":Z
    .local v2, "isExec":I
    :goto_0
    return v2

    .line 361
    .end local v2    # "isExec":I
    .restart local v1    # "isExec":Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    invoke-interface {v3}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;->shutdownServices()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 368
    :goto_1
    const-string v3, "BleProfileServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shutdownServices: isExec="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 370
    .restart local v2    # "isExec":I
    goto :goto_0

    .line 362
    .end local v2    # "isExec":I
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 364
    const-string v3, "BleProfileServiceManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
