.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$UpdateConfigReceiver;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0xc8

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x28

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x32

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static DEBUG:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final LOW_DIMMING_PROTECTION_DURATION:J = 0x1388L

.field private static final LOW_DIMMING_PROTECTION_SUPPORT:Z

.field private static final LOW_DIMMING_PROTECTION_THRESHOLD:I = 0x28

.field private static final MSG_PROTECT_LOW_DIMMING:I = 0x64

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final MTK_AAL_LOW_DIMMING_PROTECTION_TRIGGERED:Ljava/lang/String; = "com.mediatek.aal.low_dimming_protection_triggered"

.field public static final MTK_AAL_RUNTIME_TUNING_SUPPORT:Z

.field public static final MTK_AAL_SUPPORT:Z

.field private static final MTK_AAL_UPDATE_CONFIG_ACTION:Ljava/lang/String; = "com.mediatek.aal.update_config"

.field public static final MTK_ULTRA_DIMMING_SUPPORT:Z

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TUNING_ALI2BLI_CURVE:I = 0x1

.field private static final TUNING_ALI2BLI_CURVE_LENGTH:I = 0x0

.field private static final TUNING_BLI_RAMP_RATE_BRIGHTEN:I = 0x2

.field private static final TUNING_BLI_RAMP_RATE_DARKEN:I = 0x3

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z


# instance fields
.field private BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

.field private BRIGHTNESS_RAMP_RATE_DARKEN:I

.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppliedAutoBrightness:Z

.field private mAppliedDimming:Z

.field private mAppliedLowPower:Z

.field private mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

.field private mBackLightGamma:F

.field private mBackLightMaximum:I

.field private mBackLightMinimum:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mDisplayReadyLocked:Z

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private mIPOShutDown:Z

.field private mLastBackLightGamma:F

.field private mLastPowerPolicy:I

.field private final mLights:Lcom/android/server/lights/LightsManager;

.field private final mLock:Ljava/lang/Object;

.field private mLowDimmingProtectionEnabled:Z

.field private mLowDimmingProtectionTriggerBrightness:I

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenOff:Z

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

.field private final mScreenBrightnessDarkConfig:I

.field private final mScreenBrightnessDimConfig:I

.field private final mScreenBrightnessDozeConfig:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/autobrightness/RampAnimatorLenovo",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShutDown:Z

.field private mTuningAli2BliSerial:I

.field private mTuningBliBrightenSerial:I

.field private mTuningBliDarkenSerial:I

.field private mTuningInitCurve:[I

.field private mTuningQuicklyApply:Z

.field private mUnfinishedBusiness:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private final mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 100
    const-class v0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->$assertionsDisabled:Z

    .line 106
    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 148
    const-string v0, "ro.mtk_aal_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_SUPPORT:Z

    .line 151
    sget-boolean v0, Landroid/os/PowerManager;->MTK_ULTRA_DIMMING_SUPPORT:Z

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->MTK_ULTRA_DIMMING_SUPPORT:Z

    .line 153
    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->nativeRuntimeTuningIsSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_RUNTIME_TUNING_SUPPORT:Z

    .line 1697
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->MTK_ULTRA_DIMMING_SUPPORT:Z

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->LOW_DIMMING_PROTECTION_SUPPORT:Z

    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "blanker"    # Lcom/android/server/display/DisplayBlanker;

    .prologue
    .line 325
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/16 v2, 0x28

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    .line 146
    const/16 v2, 0x28

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_DARKEN:I

    .line 158
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 261
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 264
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 265
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 297
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastPowerPolicy:I

    .line 310
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIPOShutDown:Z

    .line 312
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mShutDown:Z

    .line 315
    const/high16 v2, 0x7fc00000    # NaNf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mBackLightGamma:F

    .line 316
    const/high16 v2, 0x7fc00000    # NaNf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastBackLightGamma:F

    .line 317
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mBackLightMinimum:I

    .line 318
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mBackLightMaximum:I

    .line 608
    new-instance v2, Lcom/android/server/display/DisplayPowerController$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 626
    new-instance v2, Lcom/android/server/display/DisplayPowerController$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

    .line 1206
    new-instance v2, Lcom/android/server/display/DisplayPowerController$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1309
    new-instance v2, Lcom/android/server/display/DisplayPowerController$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1322
    new-instance v2, Lcom/android/server/display/DisplayPowerController$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1335
    new-instance v2, Lcom/android/server/display/DisplayPowerController$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 1501
    new-instance v2, Lcom/android/server/display/DisplayPowerController$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 1579
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTuningInitCurve:[I

    .line 1580
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mTuningAli2BliSerial:I

    .line 1581
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mTuningBliBrightenSerial:I

    .line 1582
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mTuningBliDarkenSerial:I

    .line 1583
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mTuningQuicklyApply:Z

    .line 1710
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionEnabled:Z

    .line 1711
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionTriggerBrightness:I

    .line 326
    new-instance v2, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 327
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 329
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 330
    const-class v2, Lcom/android/server/lights/LightsManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    .line 331
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 332
    const-class v2, Landroid/view/WindowManagerPolicy;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    .line 333
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 334
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 336
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 338
    .local v16, "resources":Landroid/content/res/Resources;
    const/16 v19, 0x0

    .line 339
    .local v19, "screenBrightnessVirtualValues":Z
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->MTK_ULTRA_DIMMING_SUPPORT:Z

    if-eqz v2, :cond_0

    .line 340
    const v2, 0x80c0008

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 345
    :cond_0
    const v2, 0x10e0051

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(IZ)I

    move-result v18

    .line 347
    .local v18, "screenBrightnessSettingMinimum":I
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->MTK_ULTRA_DIMMING_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 348
    const/16 v18, 0x1

    .line 351
    :cond_1
    const v2, 0x10e0054

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(IZ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 354
    const v2, 0x10e0055

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(IZ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 357
    const v2, 0x10e0056

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(IZ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 359
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-le v2, v3, :cond_2

    .line 360
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected config_screenBrightnessDark ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to be less than or equal to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "config_screenBrightnessDim ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-le v2, v3, :cond_3

    .line 365
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected config_screenBrightnessDark ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to be less than or equal to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "config_screenBrightnessSettingMinimum ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 375
    .local v9, "screenBrightnessRangeMinimum":I
    const/16 v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 377
    const v2, 0x112001e

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 380
    const v2, 0x1120041

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 383
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v2, :cond_4

    .line 384
    const v2, 0x1070024

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    .line 386
    .local v15, "lux":[I
    const v2, 0x1070025

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v17

    .line 388
    .local v17, "screenBrightness":[I
    const v2, 0x10e0057

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 390
    .local v8, "lightSensorWarmUpTimeConfig":I
    const v2, 0x1130001

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v11

    .line 395
    .local v11, "dozeScaleFactor":F
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/android/server/display/DisplayPowerController;->createAutoBrightnessSpline([I[IZ)Landroid/util/Spline;

    move-result-object v7

    .line 397
    .local v7, "screenAutoBrightnessSpline":Landroid/util/Spline;
    if-nez v7, :cond_7

    .line 398
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "must be monotic and have exactly one more entry than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "config_autoBrightnessLevels (size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v15

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "which must be strictly increasing.  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Auto-brightness will be disabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 443
    .end local v7    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .end local v8    # "lightSensorWarmUpTimeConfig":I
    .end local v11    # "dozeScaleFactor":F
    .end local v15    # "lux":[I
    .end local v17    # "screenBrightness":[I
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 445
    const v2, 0x1120022

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_5

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 456
    :cond_5
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_RUNTIME_TUNING_SUPPORT:Z

    if-eqz v2, :cond_6

    .line 457
    new-instance v14, Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.aal.update_config"

    invoke-direct {v14, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 458
    .local v14, "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/display/DisplayPowerController$UpdateConfigReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/display/DisplayPowerController$UpdateConfigReceiver;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    invoke-virtual {v2, v3, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 461
    .end local v14    # "filter":Landroid/content/IntentFilter;
    :cond_6
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 462
    .restart local v14    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/display/DisplayPowerController$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    invoke-virtual {v2, v3, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 481
    return-void

    .line 406
    .end local v14    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .restart local v8    # "lightSensorWarmUpTimeConfig":I
    .restart local v11    # "dozeScaleFactor":F
    .restart local v15    # "lux":[I
    .restart local v17    # "screenBrightness":[I
    :cond_7
    const/4 v2, 0x0

    aget v2, v17, v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(IZ)I

    move-result v12

    .line 407
    .local v12, "bottom":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    if-le v2, v12, :cond_8

    .line 408
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config_screenBrightnessDark ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") should be less than or equal to the first value of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "config_autoBrightnessLcdBacklightValues ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_8
    if-ge v12, v9, :cond_9

    .line 414
    move v9, v12

    .line 424
    :cond_9
    new-instance v2, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;-><init>(Landroid/content/Context;Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .line 431
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_SUPPORT:Z

    if-eqz v2, :cond_4

    array-length v2, v15

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    array-length v3, v0

    if-ne v2, v3, :cond_4

    .line 432
    array-length v2, v15

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v13, v2, [I

    .line 433
    .local v13, "curve":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v13, v2

    .line 434
    const/4 v2, 0x0

    const/4 v3, 0x1

    array-length v4, v15

    invoke-static {v15, v2, v13, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 435
    const/4 v2, 0x0

    array-length v3, v15

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    array-length v4, v0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v13, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 438
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mTuningInitCurve:[I

    goto/16 :goto_0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->handleProtectLowDimming()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIPOShutDown:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mShutDown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mTuningQuicklyApply:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method private animateScreenBrightness(II)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    .line 1080
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1081
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mLastPowerPolicy:I

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->animateTo(IIZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    :cond_1
    :goto_1
    return-void

    .line 1085
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1091
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private animateScreenStateChange(IZ)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "performScreenOffTransition"    # Z

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1099
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v2, :cond_2

    if-eq p1, v1, :cond_2

    .line 1108
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1109
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1112
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1116
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1134
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 1136
    :cond_3
    if-ne p1, v5, :cond_5

    .line 1141
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    invoke-virtual {v1}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1147
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1153
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 1154
    :cond_5
    if-ne p1, v3, :cond_8

    .line 1158
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    invoke-virtual {v0}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1165
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 1166
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1173
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1174
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 1177
    :cond_8
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1180
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1185
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_9

    .line 1189
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    goto/16 :goto_0

    .line 1191
    :cond_9
    if-eqz p2, :cond_b

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v4, :cond_a

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v1, :cond_b

    .line 1197
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 1191
    goto :goto_1

    .line 1201
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    goto/16 :goto_0
.end method

.method private blockScreenOn()V
    .locals 4

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    .line 1018
    const-wide/32 v0, 0x80000

    const-string v2, "Screen on blocked"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1019
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1020
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 1021
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_0
    return-void
.end method

.method private static clampAbsoluteBrightness(IZ)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "virtualValue"    # Z

    .prologue
    .line 1466
    if-nez p1, :cond_0

    .line 1467
    invoke-static {p0}, Landroid/os/PowerManager;->dimmingPhysicalToVirtual(I)I

    move-result p0

    .line 1468
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1075
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .prologue
    .line 1291
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1292
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1293
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 1295
    :cond_0
    return-void
.end method

.method private static createAutoBrightnessSpline([I[IZ)Landroid/util/Spline;
    .locals 13
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I
    .param p2, "virtualValues"    # Z

    .prologue
    const/high16 v12, 0x3fa00000    # 1.25f

    .line 1435
    :try_start_0
    array-length v2, p1

    .line 1436
    .local v2, "n":I
    new-array v5, v2, [F

    .line 1437
    .local v5, "x":[F
    new-array v6, v2, [F

    .line 1439
    .local v6, "y":[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p1, v8

    invoke-static {v8, p2}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(IZ)F

    move-result v8

    aput v8, v6, v7

    .line 1440
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1441
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 1442
    aget v7, p1, v1

    invoke-static {v7, p2}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(IZ)F

    move-result v7

    aput v7, v6, v1

    .line 1440
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1445
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 1446
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1447
    const-string v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "v":F
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 1449
    const-string v7, "DisplayPowerController"

    const-string v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1448
    mul-float/2addr v4, v12

    goto :goto_1

    .line 1453
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v4    # "v":F
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    .line 1454
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v7, "DisplayPowerController"

    const-string v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1455
    const/4 v3, 0x0

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method

.method private debounceProximitySensor()V
    .locals 8

    .prologue
    .line 1271
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 1274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1275
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    .line 1277
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1278
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 1279
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 1288
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 1283
    .restart local v2    # "now":J
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1284
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1285
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1378
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1379
    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    invoke-virtual {v1}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_2

    .line 1410
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 1413
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    if-eqz v0, :cond_3

    .line 1414
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-virtual {v0, p1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->dump(Ljava/io/PrintWriter;)V

    .line 1417
    :cond_3
    return-void
.end method

.method private getBrightnessSetting()I
    .locals 4

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getNewBacklight(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/16 v3, 0xcd

    const/16 v2, 0x80

    const/16 v1, 0xa

    .line 1529
    move v0, p1

    .line 1530
    .local v0, "newLevel":I
    if-ltz p1, :cond_1

    if-gt p1, v1, :cond_1

    .line 1531
    move v0, p1

    .line 1539
    :cond_0
    :goto_0
    int-to-float v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1540
    return v0

    .line 1532
    :cond_1
    if-gt p1, v2, :cond_2

    if-le p1, v1, :cond_2

    .line 1533
    mul-int/lit8 v1, p1, 0x41

    add-int/lit16 v1, v1, 0x212

    div-int/lit8 v0, v1, 0x76

    goto :goto_0

    .line 1534
    :cond_2
    if-gt p1, v3, :cond_3

    if-le p1, v2, :cond_3

    .line 1535
    mul-int/lit8 v1, p1, 0x50

    add-int/lit16 v1, v1, -0x1171

    div-int/lit8 v0, v1, 0x4d

    goto :goto_0

    .line 1536
    :cond_3
    const/16 v1, 0xff

    if-gt p1, v1, :cond_0

    if-le p1, v3, :cond_0

    .line 1537
    mul-int/lit8 v1, p1, 0x2

    add-int/lit16 v0, v1, -0xff

    goto :goto_0
.end method

.method private handleProtectLowDimming()V
    .locals 5

    .prologue
    .line 1734
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-nez v2, :cond_0

    .line 1735
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->protectedMinimumBrightness()I

    move-result v1

    .line 1737
    .local v1, "minBrightness":I
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->isScreenStateBright()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessSetting()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    const/16 v3, 0x28

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    if-ge v2, v1, :cond_0

    .line 1743
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Low dimming protection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", auto = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-virtual {v4}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->getAutomaticScreenBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1750
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.aal.low_dimming_protection_triggered"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1751
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1756
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "minBrightness":I
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionTriggerBrightness:I

    .line 1757
    return-void
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 1243
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1244
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1247
    :cond_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v2, :cond_2

    if-nez p3, :cond_0

    .line 1254
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1255
    if-eqz p3, :cond_3

    .line 1256
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1257
    add-long v0, p1, v4

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 1266
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    goto :goto_0

    .line 1260
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1261
    add-long v0, p1, v4

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_1
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 572
    new-instance v0, Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    invoke-virtual {v2, v4}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/ColorFade;

    invoke-direct {v3, v4}, Lcom/android/server/display/ColorFade;-><init>(I)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/lights/Light;Lcom/android/server/display/ColorFade;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 576
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 578
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 579
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 581
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 583
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 584
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 590
    new-instance v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-virtual {v4}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->getStateManager()Lcom/android/server/display/autobrightness/StateManager;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;Landroid/content/Context;Lcom/android/server/display/autobrightness/StateManager;I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    .line 597
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->setListener(Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;)V

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 602
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    goto :goto_0

    .line 576
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 581
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isScreenStateBright()Z
    .locals 2

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeGetTuningInt(I)I
.end method

.method private static native nativeGetTuningIntArray(I[I)V
.end method

.method private static native nativeGetTuningSerial(I)I
.end method

.method private static native nativeRuntimeTuningIsSupported()Z
.end method

.method public static native nativeSetDebouncedAmbientLight(I)V
.end method

.method private static native nativeSetTuningInt(II)I
.end method

.method private static native nativeSetTuningIntArray(I[I)I
.end method

.method private static normalizeAbsoluteBrightness(IZ)F
    .locals 2
    .param p0, "value"    # I
    .param p1, "virtualValue"    # Z

    .prologue
    .line 1461
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(IZ)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private protectedMinimumBrightness()I
    .locals 2

    .prologue
    .line 1718
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-virtual {v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->getAutomaticScreenBrightness()I

    move-result v0

    .line 1723
    .local v0, "autoBrightness":I
    const/16 v1, 0x50

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x28

    goto :goto_0
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1420
    packed-switch p0, :pswitch_data_0

    .line 1428
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1422
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 1424
    :pswitch_1
    const-string v0, "Negative"

    goto :goto_0

    .line 1426
    :pswitch_2
    const-string v0, "Positive"

    goto :goto_0

    .line 1420
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1332
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1333
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1319
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1320
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1306
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1307
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 555
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 557
    monitor-exit v1

    .line 558
    return-void

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 561
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    .line 562
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 563
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 564
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 565
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 567
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 5
    .param p1, "debounceTime"    # J

    .prologue
    .line 1298
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1301
    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1302
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, -0x1

    .line 1214
    if-eqz p1, :cond_2

    .line 1215
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    .line 1216
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1217
    const-string v0, "DisplayPowerController"

    const-string v1, "setProximitySensorEnabled : True"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1222
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1240
    :cond_1
    :goto_0
    return-void

    .line 1226
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    .line 1227
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1228
    const-string v0, "DisplayPowerController"

    const-string v1, "setProximitySensorEnabled : False"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1233
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1234
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1235
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1236
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1237
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0
.end method

.method private setScreenState(I)Z
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1035
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 1036
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v4

    if-eq v4, v2, :cond_1

    move v1, v2

    .line 1037
    .local v1, "wasOn":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 1041
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    :goto_1
    if-eq p1, v2, :cond_2

    move v0, v2

    .line 1051
    .local v0, "isOn":Z
    :goto_2
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 1052
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1053
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->screenTurnedOff()V

    .line 1071
    .end local v0    # "isOn":Z
    .end local v1    # "wasOn":Z
    :cond_0
    :goto_3
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v4, :cond_6

    :goto_4
    return v2

    :cond_1
    move v1, v3

    .line 1036
    goto :goto_0

    .restart local v1    # "wasOn":Z
    :cond_2
    move v0, v3

    .line 1050
    goto :goto_2

    .line 1054
    .restart local v0    # "isOn":Z
    :cond_3
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    .line 1057
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mIPOShutDown:Z

    if-eqz v4, :cond_4

    .line 1058
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1059
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 1060
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mIPOShutDown:Z

    .line 1061
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1068
    :goto_5
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_3

    .line 1063
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    goto :goto_5

    .line 1066
    :cond_5
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    goto :goto_5

    .end local v0    # "isOn":Z
    .end local v1    # "wasOn":Z
    :cond_6
    move v2, v3

    .line 1071
    goto :goto_4

    .line 1042
    .restart local v1    # "wasOn":Z
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    .line 1026
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v2, :cond_0

    .line 1027
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1028
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long v0, v2, v4

    .line 1029
    .local v0, "delay":J
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const-wide/32 v2, 0x80000

    const-string v4, "Screen on blocked"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1032
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private updateBrightness(IZ)I
    .locals 4
    .param p1, "brightness"    # I
    .param p2, "autoBrightnessEnabled"    # Z

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 1556
    move v0, p1

    .line 1557
    .local v0, "value":I
    if-eqz p2, :cond_0

    .line 1558
    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mBackLightGamma:F

    invoke-static {v1, v2}, Landroid/util/FloatMath;->pow(FF)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1564
    :cond_0
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBackLightMinimum:I

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mBackLightMaximum:I

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 1565
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App Update Brightness, old brightness= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new brightness= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    return v0
.end method

.method private updatePowerState()V
    .locals 24

    .prologue
    .line 639
    const/4 v13, 0x0

    .line 640
    .local v13, "mustInitialize":Z
    const/4 v4, 0x0

    .line 642
    .local v4, "autoBrightnessAdjustmentChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 643
    const/16 v20, 0x0

    :try_start_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 645
    monitor-exit v21

    .line 1009
    :goto_0
    return-void

    .line 648
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 649
    new-instance v20, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 650
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 651
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 652
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 653
    const/4 v13, 0x1

    .line 664
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    const/4 v14, 0x1

    .line 665
    .local v14, "mustNotify":Z
    :goto_2
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    if-eqz v13, :cond_2

    .line 669
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    .line 671
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_RUNTIME_TUNING_SUPPORT:Z

    if-eqz v20, :cond_2

    .line 672
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->writeInitConfig()V

    .line 675
    :cond_2
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_RUNTIME_TUNING_SUPPORT:Z

    if-eqz v20, :cond_3

    .line 676
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateRuntimeConfig()V

    .line 682
    :cond_3
    const/4 v7, -0x1

    .line 683
    .local v7, "brightness":I
    const/4 v15, 0x0

    .line 684
    .local v15, "performScreenOffTransition":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 714
    :goto_3
    const/16 v19, 0x2

    .line 717
    .local v19, "state":I
    :cond_4
    :goto_4
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->$assertionsDisabled:Z

    if-nez v20, :cond_a

    if-nez v19, :cond_a

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 654
    .end local v7    # "brightness":I
    .end local v14    # "mustNotify":Z
    .end local v15    # "performScreenOffTransition":Z
    .end local v19    # "state":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    move/from16 v22, v0

    cmpl-float v20, v20, v22

    if-eqz v20, :cond_6

    const/4 v4, 0x1

    .line 657
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 658
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    move/from16 v22, v0

    or-int v20, v20, v22

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 659
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 660
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 661
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    goto/16 :goto_1

    .line 665
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 655
    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    .line 664
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 686
    .restart local v7    # "brightness":I
    .restart local v14    # "mustNotify":Z
    .restart local v15    # "performScreenOffTransition":Z
    :pswitch_0
    const/16 v19, 0x1

    .line 688
    .restart local v19    # "state":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mShutDown:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 689
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mShutDown:Z

    goto/16 :goto_4

    .line 690
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mIPOShutDown:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    goto/16 :goto_4

    .line 699
    .end local v19    # "state":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    move/from16 v19, v0

    .line 704
    .restart local v19    # "state":I
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v7, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto/16 :goto_4

    .line 702
    .end local v19    # "state":I
    :cond_9
    const/16 v19, 0x3

    .restart local v19    # "state":I
    goto :goto_6

    .line 710
    .end local v19    # "state":I
    :pswitch_2
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    goto/16 :goto_3

    .line 720
    .restart local v19    # "state":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    move-object/from16 v20, v0

    if-eqz v20, :cond_32

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2e

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2e

    .line 722
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 723
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 725
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    .line 744
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 746
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 747
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 752
    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 753
    const/16 v19, 0x1

    .line 757
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mIPOShutDown:Z

    .line 762
    .local v11, "ipoShutdown":Z
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v19

    .line 766
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 767
    const/4 v7, 0x0

    .line 771
    :cond_e
    const/4 v5, 0x0

    .line 772
    .local v5, "autoBrightnessEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    .line 773
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    move/from16 v20, v0

    if-eqz v20, :cond_33

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_33

    :cond_f
    const/4 v6, 0x1

    .line 775
    .local v6, "autoBrightnessEnabledInDoze":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    move/from16 v20, v0

    if-eqz v20, :cond_34

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    if-eqz v6, :cond_34

    :cond_10
    if-gez v7, :cond_34

    const/4 v5, 0x1

    .line 779
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    move-object/from16 v22, v0

    if-nez v5, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_35

    :cond_11
    const/16 v20, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    move/from16 v23, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_36

    const/16 v21, 0x1

    :goto_c
    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->configure(ZFZ)V

    .line 788
    .end local v6    # "autoBrightnessEnabledInDoze":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    if-eqz v7, :cond_13

    .line 790
    const/16 v7, 0xff

    .line 794
    :cond_13
    const/16 v18, 0x0

    .line 795
    .local v18, "slowChange":Z
    if-gez v7, :cond_39

    .line 796
    if-eqz v5, :cond_14

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->getAutomaticScreenBrightness()I

    move-result v7

    .line 799
    :cond_14
    if-ltz v7, :cond_37

    .line 801
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v7

    .line 805
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mLastPowerPolicy:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 808
    const/16 v18, 0x1

    .line 810
    :cond_15
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 838
    :cond_16
    :goto_d
    if-gez v7, :cond_18

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 840
    :cond_17
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 847
    :cond_18
    if-gez v7, :cond_1b

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v7

    .line 851
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->LOW_DIMMING_PROTECTION_SUPPORT:Z

    if-eqz v20, :cond_1b

    .line 852
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isScreenStateBright()Z

    move-result v20

    if-nez v20, :cond_19

    .line 857
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionTriggerBrightness:I

    .line 860
    :cond_19
    const/16 v20, 0x28

    move/from16 v0, v20

    if-ge v7, v0, :cond_3a

    const/16 v20, 0x1

    :goto_e
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionEnabled:Z

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    move-object/from16 v22, v0

    if-nez v5, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3b

    :cond_1a
    const/16 v20, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    move/from16 v23, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3c

    const/16 v21, 0x1

    :goto_10
    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->configure(ZFZ)V

    .line 864
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->protectedMinimumBrightness()I

    move-result v12

    .line 865
    .local v12, "minBrightness":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessSetting()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    if-ge v7, v12, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionTriggerBrightness:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v7, v0, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isScreenStateBright()Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 870
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 871
    .local v8, "current":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    const-wide/16 v22, 0x1388

    add-long v22, v22, v8

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 875
    const-string v20, "DisplayPowerController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Trigger low dimming protection : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " < "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", auto = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->getAutomaticScreenBrightness()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionTriggerBrightness:I

    .line 888
    .end local v8    # "current":J
    .end local v12    # "minBrightness":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    .line 889
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v7, v0, :cond_1c

    .line 891
    add-int/lit8 v20, v7, -0xa

    if-lez v20, :cond_3d

    .line 892
    add-int/lit8 v7, v7, -0xa

    .line 895
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 898
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    move/from16 v20, v0

    if-nez v20, :cond_1d

    .line 899
    const/16 v18, 0x0

    .line 901
    :cond_1d
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 904
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 910
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_21

    .line 911
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v7, v0, :cond_1f

    .line 912
    div-int/lit8 v20, v7, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 914
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    move/from16 v20, v0

    if-nez v20, :cond_20

    .line 915
    const/16 v18, 0x0

    .line 917
    :cond_20
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    .line 922
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    move/from16 v20, v0

    if-nez v20, :cond_27

    .line 924
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mBackLightGamma:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-eqz v20, :cond_3e

    .line 927
    :goto_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mBackLightGamma:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mLastBackLightGamma:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_22

    .line 929
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mBackLightGamma:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastBackLightGamma:F

    .line 930
    const/16 v18, 0x0

    .line 934
    :cond_22
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_23

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_27

    .line 936
    :cond_23
    const/16 v16, 0x28

    .line 938
    .local v16, "rate":I
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_SUPPORT:Z

    if-eqz v20, :cond_25

    .line 939
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mTuningQuicklyApply:Z

    move/from16 v20, v0

    if-eqz v20, :cond_24

    .line 940
    const/16 v18, 0x0

    .line 942
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v20

    move/from16 v0, v20

    if-ge v0, v7, :cond_3f

    .line 943
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    move/from16 v16, v0

    .line 949
    :cond_25
    :goto_13
    if-nez v18, :cond_26

    .line 950
    const/16 v16, 0xc8

    .line 954
    :cond_26
    if-eqz v11, :cond_40

    .line 955
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v7, v1}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    .line 966
    .end local v16    # "rate":I
    :cond_27
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    move-object/from16 v20, v0

    if-nez v20, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v20

    if-nez v20, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v20

    if-nez v20, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v20

    if-eqz v20, :cond_41

    const/16 v17, 0x1

    .line 970
    .local v17, "ready":Z
    :goto_15
    if-eqz v17, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->isAnimating()Z

    move-result v20

    if-nez v20, :cond_42

    const/4 v10, 0x1

    .line 974
    .local v10, "finished":Z
    :goto_16
    if-nez v10, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    move/from16 v20, v0

    if-nez v20, :cond_29

    .line 975
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v20, :cond_28

    .line 976
    const-string v20, "DisplayPowerController"

    const-string v21, "Unfinished business..."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 979
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 983
    :cond_29
    if-eqz v17, :cond_2b

    if-eqz v14, :cond_2b

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 986
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_2a

    .line 987
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 989
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v20, :cond_2a

    .line 990
    const-string v20, "DisplayPowerController"

    const-string v22, "Display ready!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_2a
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 994
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    .line 998
    :cond_2b
    if-eqz v10, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2d

    .line 999
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v20, :cond_2c

    .line 1000
    const-string v20, "DisplayPowerController"

    const-string v21, "Finished business..."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_2c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 1007
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastPowerPolicy:I

    goto/16 :goto_0

    .line 728
    .end local v5    # "autoBrightnessEnabled":Z
    .end local v10    # "finished":Z
    .end local v11    # "ipoShutdown":Z
    .end local v17    # "ready":Z
    .end local v18    # "slowChange":Z
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2f

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2f

    .line 732
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_7

    .line 734
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    move/from16 v20, v0

    if-eqz v20, :cond_31

    .line 735
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move/from16 v20, v0

    if-eqz v20, :cond_30

    .line 736
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 738
    :cond_30
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 742
    :goto_17
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_7

    .line 740
    :cond_31
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_17

    .line 750
    :cond_32
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_8

    .line 773
    .restart local v5    # "autoBrightnessEnabled":Z
    .restart local v11    # "ipoShutdown":Z
    :cond_33
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 775
    .restart local v6    # "autoBrightnessEnabledInDoze":Z
    :cond_34
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 779
    :cond_35
    const/16 v20, 0x0

    goto/16 :goto_b

    :cond_36
    const/16 v21, 0x0

    goto/16 :goto_c

    .line 812
    .end local v6    # "autoBrightnessEnabledInDoze":Z
    .restart local v18    # "slowChange":Z
    :cond_37
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 815
    if-eqz v5, :cond_16

    .line 818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mLastPowerPolicy:I

    move/from16 v20, v0

    if-nez v20, :cond_38

    .line 820
    const/4 v7, 0x0

    goto/16 :goto_d

    .line 823
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->getCurrentValue()I

    move-result v7

    goto/16 :goto_d

    .line 834
    :cond_39
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto/16 :goto_d

    .line 860
    :cond_3a
    const/16 v20, 0x0

    goto/16 :goto_e

    .line 861
    :cond_3b
    const/16 v20, 0x0

    goto/16 :goto_f

    :cond_3c
    const/16 v21, 0x0

    goto/16 :goto_10

    .line 894
    :cond_3d
    div-int/lit8 v7, v7, 0x2

    goto/16 :goto_11

    .line 924
    :cond_3e
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/android/server/display/DisplayPowerController;->updateBrightness(IZ)I

    move-result v7

    goto/16 :goto_12

    .line 945
    .restart local v16    # "rate":I
    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_DARKEN:I

    move/from16 v16, v0

    goto/16 :goto_13

    .line 957
    :cond_40
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v7, v1}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    goto/16 :goto_14

    .line 966
    .end local v16    # "rate":I
    :cond_41
    const/16 v17, 0x0

    goto/16 :goto_15

    .line 970
    .restart local v17    # "ready":Z
    :cond_42
    const/4 v10, 0x0

    goto/16 :goto_16

    .line 993
    .restart local v10    # "finished":Z
    :catchall_1
    move-exception v20

    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v20

    .line 684
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateRuntimeConfig()V
    .locals 13

    .prologue
    .line 1612
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1613
    const/4 v8, 0x0

    .line 1616
    .local v8, "updated":Z
    const/4 v9, 0x1

    :try_start_0
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->nativeGetTuningSerial(I)I

    move-result v6

    .line 1617
    .local v6, "serial":I
    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->mTuningAli2BliSerial:I

    if-eq v6, v9, :cond_1

    .line 1618
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->nativeGetTuningInt(I)I

    move-result v4

    .line 1619
    .local v4, "length":I
    if-lez v4, :cond_9

    .line 1620
    mul-int/lit8 v9, v4, 0x2

    new-array v2, v9, [I

    .line 1621
    .local v2, "curve":[I
    const/4 v9, 0x1

    invoke-static {v9, v2}, Lcom/android/server/display/DisplayPowerController;->nativeGetTuningIntArray(I[I)V

    .line 1623
    const/4 v9, 0x0

    aget v9, v2, v9

    if-eqz v9, :cond_0

    .line 1624
    const-string v9, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AALRuntimeTuning: lux[0] is not 0: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v2, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_0
    add-int/lit8 v9, v4, -0x1

    new-array v5, v9, [I

    .line 1628
    .local v5, "lux":[I
    new-array v0, v4, [I

    .line 1630
    .local v0, "brightness":[I
    const/4 v9, 0x1

    const/4 v11, 0x0

    add-int/lit8 v12, v4, -0x1

    invoke-static {v2, v9, v5, v11, v12}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1631
    const/4 v9, 0x0

    invoke-static {v2, v4, v0, v9, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1633
    const/4 v9, 0x0

    invoke-static {v5, v0, v9}, Lcom/android/server/display/DisplayPowerController;->createAutoBrightnessSpline([I[IZ)Landroid/util/Spline;

    move-result-object v7

    .line 1634
    .local v7, "spline":Landroid/util/Spline;
    if-eqz v7, :cond_7

    .line 1635
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-virtual {v9, v7}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->setScreenAutoBrightnessSpline(Landroid/util/Spline;)V

    .line 1637
    iput v6, p0, Lcom/android/server/display/DisplayPowerController;->mTuningAli2BliSerial:I

    .line 1638
    const/4 v8, 0x1

    .line 1640
    const-string v9, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AALRuntimeTuning: curve updated. Length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", serial = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const-string v9, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AALRuntimeTuning: lux = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v2, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v5

    add-int/lit8 v12, v12, -0x1

    aget v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " brightness = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v0, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v0

    add-int/lit8 v12, v12, -0x1

    aget v12, v0, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    .end local v0    # "brightness":[I
    .end local v2    # "curve":[I
    .end local v4    # "length":I
    .end local v5    # "lux":[I
    .end local v7    # "spline":Landroid/util/Spline;
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 1662
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-virtual {v9}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->updateRuntimeConfig()V

    .line 1663
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/display/DisplayPowerController;->mTuningQuicklyApply:Z

    .line 1666
    :cond_2
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->nativeGetTuningSerial(I)I

    move-result v6

    .line 1667
    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliBrightenSerial:I

    if-eq v6, v9, :cond_4

    .line 1668
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->nativeGetTuningInt(I)I

    move-result v9

    iput v9, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    .line 1669
    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    if-gtz v9, :cond_3

    .line 1670
    const/16 v9, 0x28

    iput v9, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    .line 1671
    :cond_3
    iput v6, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliBrightenSerial:I

    .line 1673
    const-string v9, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AALRuntimeTuning: brighten = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", serial = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_4
    const/4 v9, 0x3

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->nativeGetTuningSerial(I)I

    move-result v6

    .line 1677
    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliDarkenSerial:I

    if-eq v6, v9, :cond_6

    .line 1678
    const/4 v9, 0x3

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->nativeGetTuningInt(I)I

    move-result v9

    iput v9, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_DARKEN:I

    .line 1679
    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_DARKEN:I

    if-gtz v9, :cond_5

    .line 1680
    const/16 v9, 0x28

    iput v9, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_DARKEN:I

    .line 1681
    :cond_5
    iput v6, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliDarkenSerial:I

    .line 1683
    const-string v9, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AALRuntimeTuning: darken = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_DARKEN:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", serial = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_6
    monitor-exit v10

    .line 1686
    return-void

    .line 1644
    .restart local v0    # "brightness":[I
    .restart local v2    # "curve":[I
    .restart local v4    # "length":I
    .restart local v5    # "lux":[I
    .restart local v7    # "spline":Landroid/util/Spline;
    :cond_7
    const-string v9, "DisplayPowerController"

    const-string v11, "AALRuntimeTuning: invalid curve is given."

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1647
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const-string v9, "AALRuntimeTuning: curve = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1648
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_8

    .line 1649
    aget v9, v2, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1650
    const-string v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1651
    add-int v9, v4, v3

    aget v9, v2, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1652
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1648
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1654
    :cond_8
    const-string v9, "DisplayPowerController"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1685
    .end local v0    # "brightness":[I
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "curve":[I
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "lux":[I
    .end local v6    # "serial":I
    .end local v7    # "spline":Landroid/util/Spline;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 1657
    .restart local v4    # "length":I
    .restart local v6    # "serial":I
    :cond_9
    :try_start_1
    const-string v9, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AALRuntimeTuning: invalid curve length: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private writeInitConfig()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1595
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1596
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningInitCurve:[I

    if-eqz v0, :cond_0

    .line 1597
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mTuningInitCurve:[I

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayPowerController;->nativeSetTuningIntArray(I[I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningAli2BliSerial:I

    .line 1598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningInitCurve:[I

    .line 1600
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliBrightenSerial:I

    if-ne v0, v3, :cond_1

    .line 1601
    const/4 v0, 0x2

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayPowerController;->nativeSetTuningInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliBrightenSerial:I

    .line 1604
    :cond_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliDarkenSerial:I

    if-ne v0, v3, :cond_2

    .line 1605
    const/4 v0, 0x3

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_DARKEN:I

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayPowerController;->nativeSetTuningInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliDarkenSerial:I

    .line 1608
    :cond_2
    monitor-exit v1

    .line 1609
    return-void

    .line 1608
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dismissColorFade()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 487
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1344
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1345
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1346
    const-string v0, "Display Power Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1356
    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDarkConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1374
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG_POWER:Z

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 1375
    return-void

    .line 1353
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 4
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .prologue
    .line 519
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 520
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", waitForNegativeProximity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 525
    const/4 v0, 0x0

    .line 527
    .local v0, "changed":Z
    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v1, :cond_1

    .line 529
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 530
    const/4 v0, 0x1

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v1, :cond_5

    .line 534
    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 535
    const/4 v0, 0x1

    .line 541
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 542
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 545
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v1, :cond_4

    .line 546
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 547
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 550
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v2

    return v1

    .line 536
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 537
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 538
    const/4 v0, 0x1

    goto :goto_0

    .line 551
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBackLightProperties(FII)V
    .locals 6
    .param p1, "gamma"    # F
    .param p2, "minimum"    # I
    .param p3, "maximum"    # I

    .prologue
    .line 1546
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set BackLight Prop, gamma= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%1.3f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minimum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maximum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mBackLightGamma:F

    .line 1550
    iput p2, p0, Lcom/android/server/display/DisplayPowerController;->mBackLightMinimum:I

    .line 1551
    iput p3, p0, Lcom/android/server/display/DisplayPowerController;->mBackLightMaximum:I

    .line 1552
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 1553
    return-void
.end method

.method public setIPOScreenOnDelay(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->setIPOScreenOnDelay(I)V

    .line 501
    return-void
.end method

.method public updateBrightness()V
    .locals 0

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 1014
    return-void
.end method
