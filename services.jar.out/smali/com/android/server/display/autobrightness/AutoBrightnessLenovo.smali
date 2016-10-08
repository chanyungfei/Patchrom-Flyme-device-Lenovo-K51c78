.class public Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;
.super Ljava/lang/Object;
.source "AutoBrightnessLenovo.java"

# interfaces
.implements Lcom/android/server/display/autobrightness/StateManager$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$RuntimeConfig;,
        Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;,
        Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$Callbacks;,
        Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;,
        Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_HORIZON:I = 0x2710

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final BRIGHTENING_LIGHT_DEBOUNCE:J = 0x5dcL

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final DARKENING_LIGHT_DEBOUNCE:J = 0x1388L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static DEBUG_SPEW:Z = false

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x1f4

.field private static final MSG_FAKE_LUX:I = 0x3

.field private static final MSG_REGISTER_LIGHT_SENSOR:I = 0x1

.field private static final MSG_UNREGISTER_LIGHT_SENSOR:I = 0x2

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final MSG_UPDATE_RUNTIME_CONFIG:I = 0x2

.field private static final MTK_AAL_AMBIENT_LIGHT_HORIZON:J = 0x1f4L

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 2.0f

.field public static final SUPPORT_SCREEN_ON_BEFORE_LUX:Z = false

.field private static final TAG:Ljava/lang/String; = "AutoBrightnessLenovo"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true

.field private static final USE_TWILIGHT_ADJUSTMENT:Z = false

.field private static final WEIGHTING_INTERCEPT:I = 0x2710

.field private static final ZERO_LUX_ENTER_REAL_DARK_TIME_MS:J = 0x6ddd00L


# instance fields
.field private mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mBrighteningLuxThreshold:F

.field private final mCallbacks:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mDarkeningLuxThreshold:F

.field private final mDozeScaleFactor:F

.field private mDozing:Z

.field private mFakeLuxTimeMs:J

.field private mHandler:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;

.field private mLastAutoBrightness:I

.field private mLastNonZeroLuxTime:J

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorMinLux:I

.field private mLightSensorRegisterHandler:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;

.field private mLightSensorRegisterThread:Landroid/os/HandlerThread;

.field private mLightSensorRegisterTime:J

.field private mLightSensorWarmUpTimeConfig:I

.field private mRecentLightSamples:I

.field private final mRuntimeConfig:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$RuntimeConfig;

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessAdjustment:F

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSplineManager:Lcom/android/server/display/autobrightness/SplineManager;

.field private mStateManager:Lcom/android/server/display/autobrightness/StateManager;

.field private final mTwilight:Lcom/android/server/twilight/TwilightManager;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->DEBUG:Z

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->DEBUG_SPEW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIF)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$Callbacks;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "autoBrightnessSpline"    # Landroid/util/Spline;
    .param p6, "lightSensorWarmUpTime"    # I
    .param p7, "brightnessMin"    # I
    .param p8, "brightnessMax"    # I
    .param p9, "dozeScaleFactor"    # F

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    .line 201
    iput v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightness:I

    .line 204
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightnessAdjustment:F

    .line 207
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastScreenAutoBrightnessGamma:F

    .line 215
    iput-wide v4, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastNonZeroLuxTime:J

    .line 216
    iput v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastAutoBrightness:I

    .line 222
    iput-wide v4, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorRegisterTime:J

    .line 738
    new-instance v1, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$1;-><init>(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)V

    iput-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 786
    new-instance v1, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$2;-><init>(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)V

    iput-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 951
    new-instance v1, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$RuntimeConfig;

    invoke-direct {v1, p0}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$RuntimeConfig;-><init>(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)V

    iput-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mRuntimeConfig:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$RuntimeConfig;

    .line 227
    iput-object p1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mContext:Landroid/content/Context;

    .line 228
    new-instance v1, Lcom/android/server/display/autobrightness/SplineManager;

    invoke-direct {v1, p1, p3}, Lcom/android/server/display/autobrightness/SplineManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mSplineManager:Lcom/android/server/display/autobrightness/SplineManager;

    .line 229
    new-instance v1, Lcom/android/server/display/autobrightness/StateManager;

    invoke-direct {v1, p1, p3, p0}, Lcom/android/server/display/autobrightness/StateManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/display/autobrightness/StateManager$StateChangeCallback;)V

    iput-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mStateManager:Lcom/android/server/display/autobrightness/StateManager;

    .line 232
    iput-object p2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mCallbacks:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$Callbacks;

    .line 233
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    iput-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    .line 234
    iput-object p4, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mSensorManager:Landroid/hardware/SensorManager;

    .line 236
    iput p7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenBrightnessRangeMinimum:I

    .line 237
    iput p8, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenBrightnessRangeMaximum:I

    .line 238
    iput p6, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorWarmUpTimeConfig:I

    .line 239
    iput p9, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mDozeScaleFactor:F

    .line 241
    new-instance v1, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mHandler:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;

    .line 242
    new-instance v1, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-direct {v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    .line 245
    iget-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensor:Landroid/hardware/Sensor;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorMinLux:I

    .line 256
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "mLightSensorRegisterThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorRegisterThread:Landroid/os/HandlerThread;

    .line 257
    iget-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 258
    new-instance v1, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;

    iget-object v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;-><init>(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorRegisterHandler:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mFakeLuxTimeMs:J

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 268
    .local v0, "supportLcdStepRate":Z
    invoke-static {}, Lcom/android/server/display/autobrightness/LcdStepRate;->getInstance()Lcom/android/server/display/autobrightness/LcdStepRate;

    .line 269
    invoke-static {v0, p3}, Lcom/android/server/display/autobrightness/LcdStepRate;->setEnabled(ZLandroid/os/Looper;)V

    .line 271
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->updateAmbientLux()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorRegisterTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;
    .param p1, "x1"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorRegisterTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastNonZeroLuxTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;
    .param p1, "x1"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastNonZeroLuxTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)Lcom/android/server/display/autobrightness/SplineManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mSplineManager:Lcom/android/server/display/autobrightness/SplineManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorMinLux:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->updateAutoBrightness(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->updateRuntimeConfigInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;JF)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mHandler:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorEnabled:Z

    return v0
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 442
    iget v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mRecentLightSamples:I

    .line 443
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    const-wide/16 v2, 0x2710

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->prune(J)V

    .line 444
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->push(JF)V

    .line 447
    iput p3, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastObservedLux:F

    .line 448
    iput-wide p1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastObservedLuxTime:J

    .line 449
    return-void
.end method

.method private calculateAmbientLux(J)F
    .locals 13
    .param p1, "now"    # J

    .prologue
    .line 469
    iget-object v10, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-virtual {v10}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 470
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 471
    const-string v10, "AutoBrightnessLenovo"

    const-string v11, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/high16 v10, -0x40800000    # -1.0f

    .line 499
    :goto_0
    return v10

    .line 474
    :cond_0
    const/4 v5, 0x0

    .line 475
    .local v5, "sum":F
    const/4 v8, 0x0

    .line 476
    .local v8, "totalWeight":F
    const-wide/16 v2, 0x64

    .line 477
    .local v2, "endTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 478
    iget-object v10, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    sub-long v6, v10, p1

    .line 484
    .local v6, "startTime":J
    invoke-static {v6, v7, v2, v3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->calculateWeight(JJ)F

    move-result v9

    .line 485
    .local v9, "weight":F
    iget-object v10, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    .line 486
    .local v4, "lux":F
    sget-boolean v10, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 487
    const-string v10, "AutoBrightnessLenovo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calculateAmbientLux: ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: lux="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", weight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_1
    add-float/2addr v8, v9

    .line 492
    iget-object v10, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->getLux(I)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v5, v10

    .line 493
    move-wide v2, v6

    .line 477
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 495
    .end local v4    # "lux":F
    .end local v6    # "startTime":J
    .end local v9    # "weight":F
    :cond_2
    sget-boolean v10, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 496
    const-string v10, "AutoBrightnessLenovo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calculateAmbientLux: totalWeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", result="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    div-float v12, v5, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_3
    div-float v10, v5, v8

    goto/16 :goto_0
.end method

.method private static calculateWeight(JJ)F
    .locals 2
    .param p0, "startDelta"    # J
    .param p2, "endDelta"    # J

    .prologue
    .line 503
    invoke-static {p2, p3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->weightIntegral(J)F

    move-result v0

    invoke-static {p0, p1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 680
    iget v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mHandler:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 435
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mHandler:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 437
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->applyLightSensorMeasurement(JF)V

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->updateAmbientLux(J)V

    .line 439
    return-void
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 513
    iget-object v4, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 514
    .local v0, "N":I
    move-wide v2, p1

    .line 515
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 516
    iget-object v4, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mBrighteningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 521
    :cond_0
    const-wide/16 v4, 0x5dc

    add-long/2addr v4, v2

    return-wide v4

    .line 519
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 515
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 525
    iget-object v4, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 526
    .local v0, "N":I
    move-wide v2, p1

    .line 527
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 528
    iget-object v4, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mDarkeningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 533
    :cond_0
    const-wide/16 v4, 0x1388

    add-long/2addr v4, v2

    return-wide v4

    .line 531
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 527
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private preUpdateAutoBrightness(Z)V
    .locals 3
    .param p1, "sendUpdate"    # Z

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mStateManager:Lcom/android/server/display/autobrightness/StateManager;

    iget v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    invoke-virtual {v0, v1}, Lcom/android/server/display/autobrightness/StateManager;->preProcess(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    const-string v0, "--AutoBrightnessLenovo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mStateManager:Lcom/android/server/display/autobrightness/StateManager;

    invoke-virtual {v2}, Lcom/android/server/display/autobrightness/StateManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".preProcess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") return false. Not change brightness."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :goto_0
    return-void

    .line 612
    :cond_0
    const-string v0, "AutoBrightnessLenovo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mStateManager:Lcom/android/server/display/autobrightness/StateManager;

    invoke-virtual {v2}, Lcom/android/server/display/autobrightness/StateManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".preProcess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") return true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-direct {p0, p1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->updateAutoBrightness(Z)V

    goto :goto_0
.end method

.method private setAmbientLux(F)V
    .locals 3
    .param p1, "lux"    # F

    .prologue
    .line 460
    const-string v0, "--AutoBrightnessLenovo.SetAmbientLux"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lux = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iput p1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    .line 463
    iget v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mBrighteningLuxThreshold:F

    .line 464
    iget v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mDarkeningLuxThreshold:F

    .line 466
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 394
    iget-boolean v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorEnabled:Z

    if-eq p1, v2, :cond_0

    .line 395
    const-string v2, "--AutoBrightnessLenovo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLightSensorEnabled: enable ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLightSensorEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    if-eqz p1, :cond_1

    .line 401
    iget-boolean v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorEnabled:Z

    if-nez v2, :cond_2

    .line 402
    iput-boolean v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorEnabled:Z

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorEnableTime:J

    .line 405
    iget-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorRegisterHandler:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;->sendEmptyMessage(I)Z

    .line 406
    iget-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mHandler:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;

    iget-wide v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mFakeLuxTimeMs:J

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 407
    iget-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mSplineManager:Lcom/android/server/display/autobrightness/SplineManager;

    invoke-virtual {v1}, Lcom/android/server/display/autobrightness/SplineManager;->onEnabled()V

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorRegisterTime:J

    .line 430
    :goto_0
    return v0

    .line 414
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorEnabled:Z

    if-eqz v2, :cond_2

    .line 415
    iput-boolean v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorEnabled:Z

    .line 416
    iput-boolean v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLuxValid:Z

    .line 417
    iput v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mRecentLightSamples:I

    .line 418
    iget-object v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-virtual {v2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->clear()V

    .line 419
    iget-object v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mHandler:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 421
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mHandler:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 422
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorRegisterHandler:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;->sendEmptyMessage(I)Z

    .line 424
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mStateManager:Lcom/android/server/display/autobrightness/StateManager;

    invoke-virtual {v0}, Lcom/android/server/display/autobrightness/StateManager;->clearState()V

    .line 427
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightness:I

    :cond_2
    move v0, v1

    .line 430
    goto :goto_0
.end method

.method private setScreenAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p1, "adjustment"    # F

    .prologue
    .line 452
    iget v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 453
    iput p1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightnessAdjustment:F

    .line 454
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAmbientLux()V
    .locals 6

    .prologue
    .line 537
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 538
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    const-wide/16 v4, 0x2710

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->prune(J)V

    .line 539
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->updateAmbientLux(J)V

    .line 540
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 17
    .param p1, "time"    # J

    .prologue
    .line 545
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLuxValid:Z

    if-nez v3, :cond_5

    .line 546
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorWarmUpTimeConfig:I

    int-to-long v12, v3

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorEnableTime:J

    add-long v10, v12, v14

    .line 548
    .local v10, "timeWhenSensorWarmedUp":J
    cmp-long v3, p1, v10

    if-gez v3, :cond_2

    .line 549
    sget-boolean v3, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->DEBUG:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->DEBUG_SPEW:Z

    if-eqz v3, :cond_1

    .line 550
    :cond_0
    const-string v3, "AutoBrightnessLenovo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAmbientLux: Sensor not  ready yet: time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", timeWhenSensorWarmedUp="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mHandler:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;

    const/4 v12, 0x1

    invoke-virtual {v3, v12, v10, v11}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 603
    .end local v10    # "timeWhenSensorWarmedUp":J
    :goto_0
    return-void

    .line 558
    .restart local v10    # "timeWhenSensorWarmedUp":J
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->calculateAmbientLux(J)F

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->setAmbientLux(F)V

    .line 559
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLuxValid:Z

    .line 560
    sget-boolean v3, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->DEBUG:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->DEBUG_SPEW:Z

    if-eqz v3, :cond_4

    .line 561
    :cond_3
    const-string v3, "AutoBrightnessLenovo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mAmbientLux="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->updateAutoBrightness(Z)V

    .line 566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mStateManager:Lcom/android/server/display/autobrightness/StateManager;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    invoke-virtual {v3, v12}, Lcom/android/server/display/autobrightness/StateManager;->initState(F)V

    .line 569
    .end local v10    # "timeWhenSensorWarmedUp":J
    :cond_5
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v4

    .line 570
    .local v4, "nextBrightenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v6

    .line 571
    .local v6, "nextDarkenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->calculateAmbientLux(J)F

    move-result v2

    .line 573
    .local v2, "ambientLux":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mBrighteningLuxThreshold:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_6

    cmp-long v3, v4, p1

    if-lez v3, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mDarkeningLuxThreshold:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_9

    cmp-long v3, v6, p1

    if-gtz v3, :cond_9

    .line 575
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->setAmbientLux(F)V

    .line 576
    sget-boolean v3, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->DEBUG_SPEW:Z

    if-eqz v3, :cond_8

    .line 577
    const-string v12, "AutoBrightnessLenovo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAmbientLux: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_b

    const-string v3, "Brightened"

    :goto_1
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ": "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "mBrighteningLuxThreshold="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mBrighteningLuxThreshold:F

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ", mAmbientLightRingBuffer.mCount="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    # getter for: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->mCount:I
    invoke-static {v13}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;->access$000(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;)I

    move-result v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ", mAmbientLux="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->preUpdateAutoBrightness(Z)V

    .line 586
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v4

    .line 587
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v6

    .line 589
    :cond_9
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 596
    .local v8, "nextTransitionTime":J
    cmp-long v3, v8, p1

    if-lez v3, :cond_c

    .line 598
    :goto_2
    sget-boolean v3, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->DEBUG_SPEW:Z

    if-eqz v3, :cond_a

    .line 599
    const-string v3, "AutoBrightnessLenovo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAmbientLux: Scheduling ambient lux update for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mHandler:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;

    const/4 v12, 0x1

    invoke-virtual {v3, v12, v8, v9}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 577
    .end local v8    # "nextTransitionTime":J
    :cond_b
    const-string v3, "Darkened"

    goto/16 :goto_1

    .line 596
    .restart local v8    # "nextTransitionTime":J
    :cond_c
    const-wide/16 v12, 0x1f4

    add-long v8, p1, v12

    goto :goto_2
.end method

.method private updateAutoBrightness(Z)V
    .locals 10
    .param p1, "sendUpdate"    # Z

    .prologue
    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 620
    iget-boolean v5, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLuxValid:Z

    if-nez v5, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mSplineManager:Lcom/android/server/display/autobrightness/SplineManager;

    iget v6, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    invoke-virtual {v5, v6}, Lcom/android/server/display/autobrightness/SplineManager;->interpolate(F)F

    move-result v4

    .line 627
    .local v4, "value":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 629
    .local v1, "gamma":F
    sget-boolean v5, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->DEBUG_SPEW:Z

    if-eqz v5, :cond_2

    .line 630
    const-string v5, "AutoBrightnessLenovo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAutoBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mSplineManager:Lcom/android/server/display/autobrightness/SplineManager;

    invoke-virtual {v7}, Lcom/android/server/display/autobrightness/SplineManager;->getSplineName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-float v7, v4, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->clampScreenBrightness(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_2
    iget v5, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightnessAdjustment:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 637
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x40800000    # -1.0f

    iget v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightnessAdjustment:F

    neg-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    .line 639
    .local v0, "adjGamma":F
    mul-float/2addr v1, v0

    .line 641
    sget-boolean v5, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->DEBUG_SPEW:Z

    if-eqz v5, :cond_3

    .line 650
    .end local v0    # "adjGamma":F
    :cond_3
    cmpl-float v5, v1, v8

    if-eqz v5, :cond_4

    .line 651
    move v2, v4

    .line 652
    .local v2, "in":F
    invoke-static {v4, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v4

    .line 653
    sget-boolean v5, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->DEBUG_SPEW:Z

    if-eqz v5, :cond_4

    .line 654
    const-string v5, "AutoBrightnessLenovo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAutoBrightness: gamma="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", in="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", out="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .end local v2    # "in":F
    :cond_4
    mul-float v5, v4, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->clampScreenBrightness(I)I

    move-result v3

    .line 661
    .local v3, "newScreenAutoBrightness":I
    iget v5, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightness:I

    if-eq v5, v3, :cond_6

    .line 662
    sget-boolean v5, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->DEBUG_SPEW:Z

    if-eqz v5, :cond_5

    .line 663
    const-string v5, "AutoBrightnessLenovo.UpdateAutoBrightness"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_5
    iput v3, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightness:I

    .line 668
    iput v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastScreenAutoBrightnessGamma:F

    .line 669
    iput v3, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastAutoBrightness:I

    .line 670
    if-eqz p1, :cond_0

    .line 671
    iget-object v5, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mCallbacks:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$Callbacks;

    invoke-interface {v5}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$Callbacks;->updateBrightness()V

    goto/16 :goto_0

    .line 674
    :cond_6
    const-string v5, "--AutoBrightnessLenovo.UpdateAutoBrightness"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "same brightness("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "). Not change brightness."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateRuntimeConfigInternal()V
    .locals 0

    .prologue
    .line 964
    return-void
.end method

.method private static weightIntegral(J)F
    .locals 4
    .param p0, "x"    # J

    .prologue
    .line 509
    long-to-float v0, p0

    long-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const v2, 0x461c4000    # 10000.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public configure(ZFZ)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "adjustment"    # F
    .param p3, "dozing"    # Z

    .prologue
    const/4 v2, 0x0

    .line 290
    const-string v1, "AutoBrightnessLenovo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configure: enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", adjustment = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dozing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iput-boolean p3, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mDozing:Z

    .line 299
    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->setLightSensorEnabled(Z)Z

    move-result v0

    .line 300
    .local v0, "changed":Z
    invoke-direct {p0, p2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->setScreenAutoBrightnessAdjustment(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 301
    if-eqz v0, :cond_0

    .line 302
    invoke-direct {p0, v2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->updateAutoBrightness(Z)V

    .line 304
    :cond_0
    return-void

    .end local v0    # "changed":Z
    :cond_1
    move v1, v2

    .line 299
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/16 v12, 0x64

    const/16 v11, 0xa

    const/high16 v10, 0x437f0000    # 255.0f

    .line 307
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 308
    const-string v6, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 314
    const-string v6, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mLightSensor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTwilight.getCurrentState()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v7}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mLightSensorEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mLightSensorEnableTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorEnableTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAmbientLux="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mBrighteningLuxThreshold="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mBrighteningLuxThreshold:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDarkeningLuxThreshold="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mDarkeningLuxThreshold:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mLastObservedLux="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastObservedLux:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mLastObservedLuxTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastObservedLuxTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mRecentLightSamples="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mRecentLightSamples:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAmbientLightRingBuffer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLightRingBuffer:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AmbientLightRingBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mScreenAutoBrightness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mScreenAutoBrightnessAdjustment="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDozing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mDozing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 332
    const-string v6, "SplineManager:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " spline="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mSplineManager:Lcom/android/server/display/autobrightness/SplineManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v4, "samplesNightSpline":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_0

    .line 340
    iget-object v6, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mSplineManager:Lcom/android/server/display/autobrightness/SplineManager;

    sget-object v7, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->NIGHT_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    int-to-float v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/display/autobrightness/SplineManager;->interpolate(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;F)F

    move-result v5

    .line 341
    .local v5, "value":F
    mul-float v6, v5, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->clampScreenBrightness(I)I

    move-result v0

    .line 343
    .local v0, "brightness":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "brightness":I
    .end local v5    # "value":F
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->NIGHT_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-virtual {v7}, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(0 -> 9)= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 349
    const/16 v1, 0xa

    :goto_1
    if-ge v1, v12, :cond_1

    .line 350
    iget-object v6, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mSplineManager:Lcom/android/server/display/autobrightness/SplineManager;

    sget-object v7, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->NIGHT_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    int-to-float v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/display/autobrightness/SplineManager;->interpolate(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;F)F

    move-result v5

    .line 351
    .restart local v5    # "value":F
    mul-float v6, v5, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->clampScreenBrightness(I)I

    move-result v0

    .line 353
    .restart local v0    # "brightness":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v1, v1, 0xa

    goto :goto_1

    .line 355
    .end local v0    # "brightness":I
    .end local v5    # "value":F
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->NIGHT_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-virtual {v7}, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(10 -> 90)= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v3, "samplesDaySpline":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v11, :cond_2

    .line 361
    iget-object v6, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mSplineManager:Lcom/android/server/display/autobrightness/SplineManager;

    sget-object v7, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->DAYTIME_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    int-to-float v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/display/autobrightness/SplineManager;->interpolate(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;F)F

    move-result v5

    .line 362
    .restart local v5    # "value":F
    mul-float v6, v5, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->clampScreenBrightness(I)I

    move-result v0

    .line 364
    .restart local v0    # "brightness":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 366
    .end local v0    # "brightness":I
    .end local v5    # "value":F
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->DAYTIME_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-virtual {v7}, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(0 -> 9)= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 370
    const/16 v1, 0xa

    :goto_3
    if-ge v1, v12, :cond_3

    .line 371
    iget-object v6, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mSplineManager:Lcom/android/server/display/autobrightness/SplineManager;

    sget-object v7, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->DAYTIME_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    int-to-float v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/display/autobrightness/SplineManager;->interpolate(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;F)F

    move-result v5

    .line 372
    .restart local v5    # "value":F
    mul-float v6, v5, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->clampScreenBrightness(I)I

    move-result v0

    .line 374
    .restart local v0    # "brightness":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v1, v1, 0xa

    goto :goto_3

    .line 376
    .end local v0    # "brightness":I
    .end local v5    # "value":F
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->DAYTIME_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-virtual {v7}, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(10 -> 90)= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v2, "s":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastNonZeroLuxTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 382
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mLastNonZeroLuxTime ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ago"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 385
    const-string v6, "StateManager"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mStateManager:Lcom/android/server/display/autobrightness/StateManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    invoke-static {p1}, Lcom/android/server/display/autobrightness/LcdStepRate;->dump(Ljava/io/PrintWriter;)V

    .line 391
    return-void
.end method

.method public getAutomaticScreenBrightness()I
    .locals 3

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mDozing:Z

    if-eqz v0, :cond_0

    .line 275
    iget v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 280
    :goto_0
    return v0

    .line 278
    :cond_0
    const-string v0, "--AutoBrightnessLenovo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAutomaticScreenBrightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mScreenAutoBrightness:I

    goto :goto_0
.end method

.method public getLastAutoBrightness()I
    .locals 3

    .prologue
    .line 284
    const-string v0, "--AutoBrightnessLenovo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastAutoBrightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastAutoBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastAutoBrightness:I

    return v0
.end method

.method public getStateManager()Lcom/android/server/display/autobrightness/StateManager;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mStateManager:Lcom/android/server/display/autobrightness/StateManager;

    return-object v0
.end method

.method public onStateChange(F)V
    .locals 3
    .param p1, "entryLux"    # F

    .prologue
    .line 968
    iget-boolean v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 969
    const-string v0, "--AutoBrightnessLenovo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange: current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mStateManager:Lcom/android/server/display/autobrightness/StateManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", entryLux = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->updateAutoBrightness(Z)V

    .line 975
    :cond_0
    return-void
.end method

.method public setScreenAutoBrightnessSpline(Landroid/util/Spline;)V
    .locals 0
    .param p1, "spline"    # Landroid/util/Spline;

    .prologue
    .line 955
    return-void
.end method

.method public updateRuntimeConfig()V
    .locals 0

    .prologue
    .line 959
    return-void
.end method
