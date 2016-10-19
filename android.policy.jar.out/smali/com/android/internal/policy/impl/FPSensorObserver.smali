.class public final Lcom/android/internal/policy/impl/FPSensorObserver;
.super Landroid/os/UEventObserver;
.source "FPSensorObserver.java"

# interfaces
.implements Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/FPSensorObserver$SettingsObserver;
    }
.end annotation


# static fields
.field public static final AVATAR_IDENTIFY_FAILED:I = 0x1

.field public static final AVATAR_IDENTIFY_SCENE_OTHER:I = 0x4

.field public static final AVATAR_IDENTIFY_SCENE_PAY:I = 0x2

.field public static final AVATAR_IDENTIFY_SCENE_SHOOT:I = 0x3

.field public static final AVATAR_IDENTIFY_SCENE_UNLOCK:I = 0x1

.field public static final AVATAR_IDENTIFY_SUCESS:I = 0x0

.field private static final CANCEL_TIMEOUT:I = 0xbb8

.field private static final FINGERPRINT_VERIFY_ACTION_BLACK_RESULT:Ljava/lang/String; = "com.lenovo.fingerprint.verification.black.result"

.field private static final FINGERPRINT_VERIFY_ACTION_BLACK_START:Ljava/lang/String; = "com.lenovo.fingerprint.verification.black.start"

.field private static final FINGERPRINT_VERIFY_ACTION_BLACK_STOP:Ljava/lang/String; = "com.lenovo.fingerprint.verification.black.stop"

.field private static final FINGERPRINT_VERIFY_ACTION_RESULT:Ljava/lang/String; = "com.lenovo.fingerprint.verification.result"

.field private static final FINGERPRINT_VERIFY_ACTION_START:Ljava/lang/String; = "com.lenovo.fingerprint.verification.start"

.field private static final FINGERPRINT_VERIFY_ACTION_STOP:Ljava/lang/String; = "com.lenovo.fingerprint.verification.stop"

.field private static final FINGERPRINT_VERIFY_EXTRA_ERROR:Ljava/lang/String; = "com.lenovo.fingerprint.error"

.field private static final FINGERPRINT_VERIFY_EXTRA_FAILED:Ljava/lang/String; = "com.lenovo.fingerprint.failed"

.field private static final FINGERPRINT_VERIFY_EXTRA_RESULT:Ljava/lang/String; = "result"

.field private static final FINGERPRINT_VERIFY_EXTRA_SUCCESS:Ljava/lang/String; = "com.lenovo.fingerprint.success"

.field private static final KEY_SPLOCKSCREEN_PROVIDER_SET:Ljava/lang/String; = "fingerprint_lockscreen_provider_set"

.field private static final MSG_CANCEL:I = 0x64

.field private static final MSG_IDENTIFY_OFFSCREEN_START:I = 0x67

.field private static final MSG_IDENTIFY_OFFSCREEN_STOP:I = 0x68

.field private static final MSG_IDENTIFY_START:I = 0x65

.field private static final MSG_IDENTIFY_STOP:I = 0x66

.field private static final SP_KEY_FINGERPRINT_FEATURE:Ljava/lang/String; = "ro.lenovo.fingerprint.feature"

.field public static final TAG:Ljava/lang/String; = "FingerprintObserver"

.field private static final TIMEOUT_IDENTIFY:J = 0x1388L

.field private static final UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/fpsensor_irq/fpc_irq"

.field private static final UEVENT_NODE:Ljava/lang/String; = "/sys/devices/virtual/fpsensor_irq/fpc_irq/uevent"

.field private static final VIBRATE_MS_ACCEPTED:J = 0x32L

.field private static final VIBRATE_MS_REJECTED:J = 0xc8L

.field private static isBootCompleted:Z

.field private static final mUnlockService:Landroid/content/ComponentName;


# instance fields
.field private DEBUG:Z

.field private bRequestVerify:Z

.field private identifyKPI:J

.field private isFPSupport:Z

.field private isOnVerifing:Z

.field private isScreenOn:Z

.field private isServiceRunning:Z

.field private isWaitForBootCompleted:Z

.field private mAction:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFPEnabled:Z

.field private mFingerprintManager:Lcom/lenovo/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIds:[I

.field final mLock:Ljava/lang/Object;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSettingsObserver:Lcom/android/internal/policy/impl/FPSensorObserver$SettingsObserver;

.field private mStopAction:Ljava/lang/String;

.field private mUserData:I

.field mVerifyReceiver:Landroid/content/BroadcastReceiver;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private startMili:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/FPSensorObserver;->isBootCompleted:Z

    .line 335
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.lenovo.lenovofingerprintsettings"

    const-string v2, "com.lenovo.fingerprintunlock.LenovoFingerprintUnlockService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/policy/impl/FPSensorObserver;->mUnlockService:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 134
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isScreenOn:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isOnVerifing:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isWaitForBootCompleted:Z

    .line 138
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->bRequestVerify:Z

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mFingerprintManager:Lcom/lenovo/fingerprint/FingerprintManager;

    .line 149
    iput v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mUserData:I

    .line 150
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isServiceRunning:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isFPSupport:Z

    .line 153
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mLock:Ljava/lang/Object;

    .line 154
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->DEBUG:Z

    .line 158
    iput-wide v4, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->startMili:J

    .line 159
    iput-wide v4, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->identifyKPI:J

    .line 195
    new-instance v1, Lcom/android/internal/policy/impl/FPSensorObserver$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/FPSensorObserver$1;-><init>(Lcom/android/internal/policy/impl/FPSensorObserver;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mVerifyReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    const-string v1, "ro.lenovo.fingerprint.feature"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isFPSupport:Z

    .line 177
    const-string v1, "FingerprintObserver"

    const-string v2, "SP_KEY_FINGERPRINT_FEATURE not support!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return-void

    .line 181
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isFPSupport:Z

    .line 182
    const-string v1, "FingerprintObserver"

    const-string v2, "create FPSensorObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-object p1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mContext:Landroid/content/Context;

    .line 185
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "FingerprintObserver"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 188
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mVibrator:Landroid/os/Vibrator;

    .line 190
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FingerprintObserver"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 191
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 192
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isBootCompleted:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/FPSensorObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FPSensorObserver;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isWaitForBootCompleted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/FPSensorObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FPSensorObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isWaitForBootCompleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/FPSensorObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FPSensorObserver;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->bRequestVerify:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/FPSensorObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FPSensorObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->bRequestVerify:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/FPSensorObserver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FPSensorObserver;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/FPSensorObserver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FPSensorObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/FPSensorObserver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FPSensorObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mStopAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/FPSensorObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FPSensorObserver;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isOnVerifing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/FPSensorObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FPSensorObserver;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FPSensorObserver;->ignoreVeriry()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/FPSensorObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FPSensorObserver;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/FPSensorObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FPSensorObserver;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mFPEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/FPSensorObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FPSensorObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mFPEnabled:Z

    return p1
.end method

.method private declared-synchronized cancelVerify()V
    .locals 3

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    const-string v1, "FingerprintObserver"

    const-string v2, "cancelVerify."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isOnVerifing:Z

    if-nez v1, :cond_1

    .line 302
    const-string v1, "FingerprintObserver"

    const-string v2, "ignore cancelVerify."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 305
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isOnVerifing:Z

    .line 306
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    const-string v1, "FingerprintObserver"

    const-string v2, "WakeLock.acquire error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized direcStartVerify()V
    .locals 6

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    const-string v0, "FingerprintObserver"

    const-string v1, "direcStartVerify"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isServiceRunning:Z

    if-eqz v0, :cond_1

    .line 397
    const-string v0, "FingerprintObserver"

    const-string v1, "isServiceRunning: true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 401
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mFingerprintManager:Lcom/lenovo/fingerprint/FingerprintManager;

    if-nez v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/fingerprint/FingerprintManager;->open(Landroid/content/Context;)Lcom/lenovo/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mFingerprintManager:Lcom/lenovo/fingerprint/FingerprintManager;

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mFingerprintManager:Lcom/lenovo/fingerprint/FingerprintManager;

    if-nez v0, :cond_3

    .line 407
    const-string v0, "FingerprintObserver"

    const-string v1, "FingerprintManager NULL, return;"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sget-boolean v0, Lcom/android/internal/policy/impl/FPSensorObserver;->isBootCompleted:Z

    if-nez v0, :cond_0

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isWaitForBootCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 414
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isServiceRunning:Z

    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mFingerprintManager:Lcom/lenovo/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/lenovo/fingerprint/FingerprintManager;->getFpIndexs()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mIds:[I

    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mFingerprintManager:Lcom/lenovo/fingerprint/FingerprintManager;

    const-wide/16 v2, 0x1388

    iget-object v4, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mIds:[I

    iget v5, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mUserData:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/fingerprint/FingerprintManager;->startIdentify(Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;J[II)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized direcStopVerify()V
    .locals 2

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    const-string v0, "FingerprintObserver"

    const-string v1, "direcStopVerify IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mFingerprintManager:Lcom/lenovo/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 426
    const-string v0, "FingerprintObserver"

    const-string v1, "FingerprintManager NULL, return;"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :goto_0
    monitor-exit p0

    return-void

    .line 430
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mFingerprintManager:Lcom/lenovo/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/lenovo/fingerprint/FingerprintManager;->release()I

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mFingerprintManager:Lcom/lenovo/fingerprint/FingerprintManager;

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isServiceRunning:Z

    .line 435
    const-string v0, "FingerprintObserver"

    const-string v1, "direcStopVerify OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPrivateMode(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lenovoprvmodid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private ignoreVeriry()V
    .locals 3

    .prologue
    .line 284
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isOnVerifing:Z

    if-eqz v1, :cond_0

    .line 285
    const-string v1, "FingerprintObserver"

    const-string v2, "ignoreVeriry."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isOnVerifing:Z

    .line 287
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    const-string v1, "FingerprintObserver"

    const-string v2, "WakeLock.acquire error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEnabled()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mFPEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/FPSensorObserver;->isBootCompleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onIdentified(II)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "userData"    # I

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/FPSensorObserver;->getPrivateMode(I)I

    move-result v1

    .line 446
    .local v1, "privMode":I
    const-string v2, "FingerprintObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIdentified, private mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->startMili:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->identifyKPI:J

    .line 452
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FPSensorObserver;->cancelVerify()V

    .line 453
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FPSensorObserver;->direcStopVerify()V

    .line 455
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FingerprintObserver"

    const-string v3, "onIdentified and do not vibrate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lenovo.fingerprint.verification.result"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "private_mode_pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    const-string v2, "result"

    const-string v3, "com.lenovo.fingerprint.success"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    iget-object v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->identifyKPI:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/lenovo/datamining/avatar/fingerprint/FingerprintDataCollect;->fingerprintIdentify(III)V

    .line 474
    return-void
.end method

.method private onNomatch()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 477
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FingerprintObserver"

    const-string v2, "onNomatch and vibrate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.fingerprint.verification.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    const-string v2, "com.lenovo.fingerprint.failed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->startMili:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->identifyKPI:J

    .line 496
    new-instance v1, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->identifyKPI:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v6, v1, v6}, Lcom/lenovo/datamining/avatar/fingerprint/FingerprintDataCollect;->fingerprintIdentify(III)V

    .line 499
    return-void
.end method

.method private requestVerify()V
    .locals 6

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->boostMax(I)V

    .line 262
    const-string v1, "FingerprintObserver"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const-string v1, "FingerprintObserver"

    const-string v2, "requestVerify."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FPSensorObserver;->direcStartVerify()V

    .line 279
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isOnVerifing:Z

    .line 280
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 281
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    const-string v1, "FingerprintObserver"

    const-string v2, "WakeLock.acquire error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPowerOn(Z)V
    .locals 9
    .param p1, "bTurnOn"    # Z

    .prologue
    const/4 v8, 0x0

    .line 640
    const-string v2, "/sys/bus/platform/drivers/fpc_irq/fpc_irq.0/setup/unlock_enabled"

    .line 642
    .local v2, "mPowerOnPath":Ljava/lang/String;
    const-string v5, "FingerprintObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "####setPowerOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    if-eqz v2, :cond_1

    .line 645
    const/4 v5, 0x1

    new-array v0, v5, [B

    const/16 v5, 0x31

    aput-byte v5, v0, v8

    .line 646
    .local v0, "data":[B
    if-nez p1, :cond_0

    .line 647
    const/16 v5, 0x30

    aput-byte v5, v0, v8

    .line 650
    :cond_0
    const/4 v3, 0x0

    .line 652
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 662
    if-eqz v4, :cond_1

    .line 663
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 670
    .end local v0    # "data":[B
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 665
    .restart local v0    # "data":[B
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 666
    .local v1, "ex":Ljava/io/IOException;
    const-string v5, "FingerprintObserver"

    const-string v6, "Failed to close FileOutputStream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 654
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 655
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 656
    const-string v5, "FingerprintObserver"

    const-string v6, "Failed to write: FileNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 662
    if-eqz v3, :cond_1

    .line 663
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 665
    :catch_2
    move-exception v1

    .line 666
    .local v1, "ex":Ljava/io/IOException;
    const-string v5, "FingerprintObserver"

    const-string v6, "Failed to close FileOutputStream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 657
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 658
    .restart local v1    # "ex":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 659
    const-string v5, "FingerprintObserver"

    const-string v6, "Failed to write: IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 662
    if-eqz v3, :cond_1

    .line 663
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 665
    :catch_4
    move-exception v1

    .line 666
    const-string v5, "FingerprintObserver"

    const-string v6, "Failed to close FileOutputStream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 661
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 662
    :goto_3
    if-eqz v3, :cond_2

    .line 663
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 667
    :cond_2
    :goto_4
    throw v5

    .line 665
    :catch_5
    move-exception v1

    .line 666
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string v6, "FingerprintObserver"

    const-string v7, "Failed to close FileOutputStream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 661
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 657
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 654
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private startUnlockService()V
    .locals 3

    .prologue
    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.fingerprintunlock.LenovoFingerprintUnlockService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/policy/impl/FPSensorObserver;->mUnlockService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 341
    const-string v1, "action"

    const-string v2, "com.lenovo.fingerprint.verification.black.start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 343
    return-void
.end method

.method private tryCancelVerify()V
    .locals 3

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 329
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FPSensorObserver;->cancelVerify()V

    .line 330
    const-string v0, "com.lenovo.fingerprint.verification.black.start"

    iput-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mStopAction:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 332
    monitor-exit v1

    .line 333
    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 571
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 597
    const-string v0, "FingerprintObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "un-handled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v0, 0x0

    .line 600
    :goto_0
    return v0

    .line 573
    :pswitch_0
    const-string v0, "FingerprintObserver"

    const-string v1, "timeout! try cancel Verify."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FPSensorObserver;->tryCancelVerify()V

    .line 600
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 578
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->startMili:J

    .line 579
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FPSensorObserver;->direcStartVerify()V

    goto :goto_1

    .line 583
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mAction:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mStopAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    const-string v0, "FingerprintObserver"

    const-string v1, "####stop is symmetric####"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FPSensorObserver;->direcStopVerify()V

    goto :goto_1

    .line 587
    :cond_0
    const-string v0, "FingerprintObserver"

    const-string v1, "####stop is not symmetric####"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 593
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FPSensorObserver;->requestVerify()V

    goto :goto_1

    .line 571
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onNoFingersOrServiceError(I)V
    .locals 7
    .param p1, "err"    # I

    .prologue
    const/4 v6, 0x1

    .line 510
    const-string v1, "FingerprintObserver"

    const-string v2, "onNoFingersOrServiceError!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FPSensorObserver;->direcStopVerify()V

    .line 516
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.fingerprint.verification.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    const-string v2, "com.lenovo.fingerprint.error"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->startMili:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->identifyKPI:J

    .line 525
    new-instance v1, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->identifyKPI:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v6, v1, v6}, Lcom/lenovo/datamining/avatar/fingerprint/FingerprintDataCollect;->fingerprintIdentify(III)V

    .line 528
    return-void
.end method

.method public onResult(III)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "fingerprintId"    # I
    .param p3, "userData"    # I

    .prologue
    .line 533
    sparse-switch p1, :sswitch_data_0

    .line 547
    const-string v0, "FingerprintObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "un-handled onResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_0
    return-void

    .line 535
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FPSensorObserver;->onNomatch()V

    goto :goto_0

    .line 538
    :sswitch_1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/FPSensorObserver;->onIdentified(II)V

    goto :goto_0

    .line 541
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/FPSensorObserver;->onNoFingersOrServiceError(I)V

    goto :goto_0

    .line 544
    :sswitch_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/FPSensorObserver;->onNoFingersOrServiceError(I)V

    goto :goto_0

    .line 533
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x67 -> :sswitch_0
        0x70 -> :sswitch_3
        0x73 -> :sswitch_2
    .end sparse-switch
.end method

.method public onStatus(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .prologue
    .line 554
    packed-switch p1, :pswitch_data_0

    .line 565
    const-string v0, "FingerprintObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "un-handled onStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_0
    return-void

    .line 556
    :pswitch_0
    const-string v0, "FingerprintObserver"

    const-string v1, "onWaitingForInput"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    :pswitch_1
    const-string v0, "FingerprintObserver"

    const-string v1, "onCaptureCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    :pswitch_2
    const-string v0, "FingerprintObserver"

    const-string v1, "onInput"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 347
    const-string v0, "FingerprintObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FingerTouch UEVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "FingerprintObserver"

    const-string v2, "screen on, ignore."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    monitor-exit v1

    .line 362
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FPSensorObserver;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isOnVerifing:Z

    if-nez v0, :cond_1

    .line 356
    const-string v0, "FingerprintObserver"

    const-string v2, "request Verify."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v0, "com.lenovo.fingerprint.verification.black.start"

    iput-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mAction:Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 361
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ready()V
    .locals 3

    .prologue
    .line 369
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->isFPSupport:Z

    if-nez v1, :cond_0

    .line 391
    :goto_0
    return-void

    .line 376
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v1, "com.lenovo.fingerprint.verification.start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v1, "com.lenovo.fingerprint.verification.stop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver;->mVerifyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
