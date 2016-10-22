.class public Lcom/android/server/display/effect/DisplayEffectService;
.super Lcom/android/server/SystemService;
.source "DisplayEffectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;,
        Lcom/android/server/display/effect/DisplayEffectService$BinderService;
    }
.end annotation


# static fields
.field private static final CHANGE_MODE_HIGH_LUX:I = 0x1770

.field private static final CHANGE_MODE_LOW_LUX:I = 0x7d0

.field public static final ERROR:I = -0x1

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x1f4

.field public static final NO_ERROR:I = 0x0

.field private static final NO_SUPPORTED:Ljava/lang/String; = "null"

.field public static final SETMODE_STATUS_ERROR:I = 0x0

.field public static final SETMODE_STATUS_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DisplayEffectService"

.field public static final UPDATE_MODE_DELAY_MS:I = 0x64


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFinalDisplayMode:I

.field private mHandler:Landroid/os/Handler;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

.field private mPendingDisplayModeOverride:I

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessSetting:I

.field private mSensorManager:Landroid/hardware/SystemSensorManager;

.field private mSettingsObserver:Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;

.field private mSmartUltraBrightModeActivated:Z

.field private mSmartUltraBrightModeEnabled:Z

.field private mSupportedDisplayEffect:[Ljava/lang/String;

.field private mSupportedMode:[Ljava/lang/String;

.field private mUpdateModeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeEnabled:Z

    .line 65
    iput v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mScreenBrightnessSetting:I

    .line 68
    iput v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mFinalDisplayMode:I

    .line 69
    iput v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPendingDisplayModeOverride:I

    .line 70
    iput-boolean v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeActivated:Z

    .line 75
    new-instance v0, Lcom/android/server/display/effect/DisplayEffectService$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/effect/DisplayEffectService$1;-><init>(Lcom/android/server/display/effect/DisplayEffectService;)V

    iput-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mUpdateModeRunnable:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lcom/android/server/display/effect/DisplayEffectService$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/effect/DisplayEffectService$2;-><init>(Lcom/android/server/display/effect/DisplayEffectService;)V

    iput-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 112
    iput-object p1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mHandler:Landroid/os/Handler;

    .line 114
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 115
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSensorManager:Landroid/hardware/SystemSensorManager;

    .line 116
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSensorManager:Landroid/hardware/SystemSensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SystemSensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mLightSensor:Landroid/hardware/Sensor;

    .line 117
    new-instance v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    invoke-direct {v0, p1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/effect/DisplayEffectService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/display/effect/DisplayEffectService;->updateMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/effect/DisplayEffectService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/effect/DisplayEffectService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->checkModeSupportedByNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/display/effect/DisplayEffectService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPendingDisplayModeOverride:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/display/effect/DisplayEffectService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/display/effect/DisplayEffectService;->scheduleUpdateMode()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/effect/DisplayEffectService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->setCABCInternal(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/effect/DisplayEffectService;)Lcom/android/server/display/effect/DisplayEffectNativeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/effect/DisplayEffectService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mFinalDisplayMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/effect/DisplayEffectService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->getSupportedMaxLevelInternal(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/effect/DisplayEffectService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->getCurrentLevelInternal(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/effect/DisplayEffectService;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/effect/DisplayEffectService;->setDisplayEffectLevelInternal(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/display/effect/DisplayEffectService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/effect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    return-void
.end method

.method private activeSmartUltrBright(Z)V
    .locals 4
    .param p1, "active"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 354
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeActivated:Z

    if-nez v0, :cond_1

    .line 355
    const-string v0, "DisplayEffectService"

    const-string v1, "enter_displayeffect_smart_ultra_bright_mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromDisplayEffect(I)V

    .line 358
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    invoke-virtual {v0, v3}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->setSmartUltrBright(Z)V

    .line 360
    iput-boolean v3, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeActivated:Z

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeActivated:Z

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "DisplayEffectService"

    const-string v1, "exit_displayeffect_smart_ultra_bright_mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromDisplayEffect(I)V

    .line 366
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    invoke-virtual {v0, v2}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->setSmartUltrBright(Z)V

    .line 368
    iput-boolean v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeActivated:Z

    goto :goto_0
.end method

.method private checkModeSupportedByNative(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 389
    const-string v0, "DisplayEffectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkModeSupportedByNative: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 393
    const-string v0, "null"

    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    const/4 v0, 0x1

    .line 398
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentLevelInternal(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    invoke-virtual {v1, p1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->getCurrentLevel(I)I

    move-result v0

    .line 213
    .local v0, "currentLevel":I
    const-string v1, "DisplayEffectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get current level value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v0
.end method

.method private native getCurrentLevel_native(I)I
.end method

.method private native getMode_native()I
.end method

.method private getSupportedDisplayEffectInternal()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 180
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->getSupportedDisplayEffect()[Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "supportedDisplayEffect":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 183
    const-string v2, "DisplayEffectService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get supported display effect value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "i":I
    :cond_0
    const-string v2, "DisplayEffectService"

    const-string v3, "get supported display effect is null."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v1, 0x0

    .end local v1    # "supportedDisplayEffect":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private native getSupportedDisplayEffect_native()[Ljava/lang/String;
.end method

.method private getSupportedMaxLevelInternal(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    invoke-virtual {v1, p1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->getSupportedMaxLevel(I)I

    move-result v0

    .line 207
    .local v0, "supportedMaxLevel":I
    const-string v1, "DisplayEffectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get supported max level value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return v0
.end method

.method private native getSupportedMaxLevel_native(I)I
.end method

.method private getSupportedModeInternal()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 193
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->getSupportedMode()[Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "supportedDisplayMode":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 196
    const-string v2, "DisplayEffectService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get mode value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "i":I
    :cond_0
    const-string v2, "DisplayEffectService"

    const-string v3, "get supported mode is null."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, 0x0

    .end local v1    # "supportedDisplayMode":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private native getSupportedMode_native()[Ljava/lang/String;
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 121
    invoke-direct {p0}, Lcom/android/server/display/effect/DisplayEffectService;->getSupportedModeInternal()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Lcom/android/server/display/effect/DisplayEffectService;->getSupportedDisplayEffectInternal()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 126
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;-><init>(Lcom/android/server/display/effect/DisplayEffectService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSettingsObserver:Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;

    .line 128
    const-string v1, "smart_ultra_bright_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSettingsObserver:Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 131
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSettingsObserver:Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 134
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSettingsObserver:Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 137
    const-string v1, "display_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSettingsObserver:Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 141
    invoke-direct {p0}, Lcom/android/server/display/effect/DisplayEffectService;->scheduleUpdateMode()V

    .line 142
    return-void
.end method

.method private saveState(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 385
    .local v0, "result":Z
    const-string v1, "DisplayEffectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveState: key= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method private scheduleUpdateMode()V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mUpdateModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mUpdateModeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    return-void
.end method

.method private sendBroadcastToLauncher(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "len.intent.action.DISPLAY_EFFECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 375
    const-string v1, "state"

    const-string v2, "enter_ultra_bright_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    return-void

    .line 377
    :cond_0
    const-string v1, "state"

    const-string v2, "exit_ultra_bright_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setCABCInternal(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->setCABC(I)V

    .line 343
    return-void
.end method

.method private setDisplayEffectLevelInternal(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "level"    # I

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->setDisplayEffectLevel(II)I

    move-result v0

    .line 219
    .local v0, "setDisplayEffectLevelResult":I
    const-string v1, "DisplayEffectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplayEffectLevelInternal: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return v0
.end method

.method private native setDisplayEffectLevel_native(II)I
.end method

.method private native setMode_native(I)I
.end method

.method private updateMode()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v9, -0x2

    .line 225
    iget-object v7, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 226
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v7, "smart_ultra_bright_mode_enabled"

    invoke-static {v2, v7, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    .line 229
    .local v5, "smartUltraBrightModeEnabled":Z
    :goto_0
    const-string v7, "screen_brightness"

    const/16 v8, 0x66

    invoke-static {v2, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 233
    .local v4, "screenBrightnessSetting":I
    const-string v7, "screen_brightness_mode"

    invoke-static {v2, v7, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 238
    .local v3, "screenBrightnessModeSetting":I
    const-string v6, "display_mode"

    invoke-static {v2, v6, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 243
    .local v0, "displayMode":I
    iget v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPendingDisplayModeOverride:I

    .line 245
    .local v1, "displayModeOverride":I
    const-string v6, "DisplayEffectService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateMode: mSmartUltraBrightModeEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScreenBrightnessSetting = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/effect/DisplayEffectService;->mScreenBrightnessSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScreenBrightnessModeSetting = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/effect/DisplayEffectService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mFinalDisplayMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/effect/DisplayEffectService;->mFinalDisplayMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v6, "DisplayEffectService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateMode: smartUltraBright = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", screenBrightness = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", brightnessModeSetting = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", displayMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", displayModeOverride = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v6, 0x5

    if-ne v0, v6, :cond_2

    iget v6, p0, Lcom/android/server/display/effect/DisplayEffectService;->mScreenBrightnessSetting:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 258
    iget v6, p0, Lcom/android/server/display/effect/DisplayEffectService;->mScreenBrightnessSetting:I

    if-ne v4, v6, :cond_0

    iget v6, p0, Lcom/android/server/display/effect/DisplayEffectService;->mScreenBrightnessModeSetting:I

    if-eq v3, v6, :cond_2

    .line 262
    :cond_0
    const-string v6, "display_mode"

    invoke-direct {p0, v6, v10}, Lcom/android/server/display/effect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    .line 273
    :goto_1
    return-void

    .end local v0    # "displayMode":I
    .end local v1    # "displayModeOverride":I
    .end local v3    # "screenBrightnessModeSetting":I
    .end local v4    # "screenBrightnessSetting":I
    .end local v5    # "smartUltraBrightModeEnabled":Z
    :cond_1
    move v5, v6

    .line 226
    goto/16 :goto_0

    .line 268
    .restart local v0    # "displayMode":I
    .restart local v1    # "displayModeOverride":I
    .restart local v3    # "screenBrightnessModeSetting":I
    .restart local v4    # "screenBrightnessSetting":I
    .restart local v5    # "smartUltraBrightModeEnabled":Z
    :cond_2
    invoke-direct {p0, v5, v1}, Lcom/android/server/display/effect/DisplayEffectService;->updateModeSmartUltraBright(ZI)V

    .line 269
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/effect/DisplayEffectService;->updateModeDisplay(II)V

    .line 270
    iput v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->mScreenBrightnessSetting:I

    .line 271
    iput v3, p0, Lcom/android/server/display/effect/DisplayEffectService;->mScreenBrightnessModeSetting:I

    goto :goto_1
.end method

.method private updateModeDisplay(II)V
    .locals 9
    .param p1, "displayMode"    # I
    .param p2, "displayModeOverride"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x4

    .line 276
    if-ne p2, v5, :cond_6

    move v0, p1

    .line 279
    .local v0, "finalDisplayMode":I
    :goto_0
    iget v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mFinalDisplayMode:I

    if-eq v0, v1, :cond_5

    .line 280
    const-string v1, "--DisplayEffectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateModeDisplay: finalDisplayMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lastDisplayMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/effect/DisplayEffectService;->mFinalDisplayMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService;->checkModeSupportedByNative(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->setMode(I)I

    .line 289
    :cond_0
    if-eq v0, v7, :cond_1

    if-ne v0, v4, :cond_7

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromDisplayEffect(I)V

    .line 298
    :cond_2
    :goto_1
    if-ne v0, v4, :cond_9

    .line 299
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/display/effect/DisplayEffectService;->sendBroadcastToLauncher(Z)V

    .line 305
    :cond_3
    :goto_2
    if-ne v0, v8, :cond_a

    .line 306
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    invoke-virtual {v1, v6}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->setCABC(I)V

    .line 312
    :cond_4
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService;->updateModeLevels(I)V

    .line 315
    iput v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mFinalDisplayMode:I

    .line 317
    :cond_5
    return-void

    .end local v0    # "finalDisplayMode":I
    :cond_6
    move v0, p2

    .line 276
    goto :goto_0

    .line 292
    .restart local v0    # "finalDisplayMode":I
    :cond_7
    iget v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mFinalDisplayMode:I

    if-eq v1, v7, :cond_8

    iget v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mFinalDisplayMode:I

    if-ne v1, v4, :cond_2

    .line 294
    :cond_8
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v5}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromDisplayEffect(I)V

    goto :goto_1

    .line 300
    :cond_9
    iget v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mFinalDisplayMode:I

    if-ne v1, v4, :cond_3

    .line 301
    invoke-direct {p0, v6}, Lcom/android/server/display/effect/DisplayEffectService;->sendBroadcastToLauncher(Z)V

    goto :goto_2

    .line 307
    :cond_a
    iget v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mFinalDisplayMode:I

    if-ne v1, v8, :cond_4

    .line 308
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->setCABC(I)V

    goto :goto_3
.end method

.method private updateModeLevels(I)V
    .locals 8
    .param p1, "mode"    # I

    .prologue
    const/4 v7, -0x1

    .line 146
    if-eqz p1, :cond_1

    .line 172
    :cond_0
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 151
    const-string v4, "null"

    iget-object v5, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 150
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService;->getSupportedMaxLevelInternal(I)I

    move-result v2

    .line 156
    .local v2, "maxLevel":I
    iget-object v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, "level":I
    if-ltz v1, :cond_2

    if-ge v1, v2, :cond_2

    .line 160
    const-string v4, "DisplayEffectService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateModeLevels: set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/effect/DisplayEffectService;->setDisplayEffectLevelInternal(II)I

    move-result v3

    .line 165
    .local v3, "result":I
    if-ne v3, v7, :cond_2

    .line 166
    const-string v4, "DisplayEffectService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateModeLevels: fail for mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateModeSmartUltraBright(ZI)V
    .locals 5
    .param p1, "smartUltraBrightModeEnabled"    # Z
    .param p2, "displayModeOverride"    # I

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeEnabled:Z

    if-eq p1, v0, :cond_0

    .line 322
    const-string v0, "--DisplayEffectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateModeSmartUltraBright: smartUltraBrightModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-eqz p1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSensorManager:Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0x7a120

    iget-object v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SystemSensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 336
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeEnabled:Z

    .line 339
    :cond_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSensorManager:Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SystemSensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService;->activeSmartUltrBright(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected handleLightSensorEvent(F)V
    .locals 1
    .param p1, "lux"    # F

    .prologue
    .line 346
    const v0, 0x45bb8000    # 6000.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 347
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService;->activeSmartUltrBright(Z)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    const/high16 v0, 0x44fa0000    # 2000.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService;->activeSmartUltrBright(Z)V

    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 553
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/android/server/display/effect/DisplayEffectService;->init()V

    .line 556
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 548
    const-string v0, "display_effect"

    new-instance v1, Lcom/android/server/display/effect/DisplayEffectService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;-><init>(Lcom/android/server/display/effect/DisplayEffectService;Lcom/android/server/display/effect/DisplayEffectService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/effect/DisplayEffectService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 549
    return-void
.end method
