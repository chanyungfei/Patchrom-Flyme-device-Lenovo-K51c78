.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field public static final REPORTING_MODE_CONTINUOUS:I = 0x0

.field private static final REPORTING_MODE_MASK:I = 0xe

.field public static final REPORTING_MODE_ONE_SHOT:I = 0x2

.field public static final REPORTING_MODE_ON_CHANGE:I = 0x1

.field private static final REPORTING_MODE_SHIFT:I = 0x1

.field public static final REPORTING_MODE_SPECIAL_TRIGGER:I = 0x3

.field private static final SENSOR_FLAG_WAKE_UP_SENSOR:I = 0x1

.field public static final SENSOR_STRING_TYPE_TILT_DETECTOR:Ljava/lang/String; = "android.sensor.tilt_detector"

.field public static final STRING_TYPE_ACCELEROMETER:Ljava/lang/String; = "android.sensor.accelerometer"

.field public static final STRING_TYPE_ACTIVITY:Ljava/lang/String; = "android.sensor.activity"

.field public static final STRING_TYPE_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.sensor.ambient_temperature"

.field public static final STRING_TYPE_FACE_DOWN:Ljava/lang/String; = "android.sensor.face_down"

.field public static final STRING_TYPE_GAME_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.game_rotation_vector"

.field public static final STRING_TYPE_GEOMAGNETIC_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.geomagnetic_rotation_vector"

.field public static final STRING_TYPE_GLANCE_GESTURE:Ljava/lang/String; = "android.sensor.glance_gesture"

.field public static final STRING_TYPE_GRAVITY:Ljava/lang/String; = "android.sensor.gravity"

.field public static final STRING_TYPE_GYROSCOPE:Ljava/lang/String; = "android.sensor.gyroscope"

.field public static final STRING_TYPE_GYROSCOPE_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_uncalibrated"

.field public static final STRING_TYPE_HEART_RATE:Ljava/lang/String; = "android.sensor.heart_rate"

.field public static final STRING_TYPE_IN_POCKET:Ljava/lang/String; = "android.sensor.in_pocket"

.field public static final STRING_TYPE_LIGHT:Ljava/lang/String; = "android.sensor.light"

.field public static final STRING_TYPE_LINEAR_ACCELERATION:Ljava/lang/String; = "android.sensor.linear_acceleration"

.field public static final STRING_TYPE_MAGNETIC_FIELD:Ljava/lang/String; = "android.sensor.magnetic_field"

.field public static final STRING_TYPE_MAGNETIC_FIELD_UNCALIBRATED:Ljava/lang/String; = "android.sensor.magnetic_field_uncalibrated"

.field public static final STRING_TYPE_ORIENTATION:Ljava/lang/String; = "android.sensor.orientation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_PEDOMETER:Ljava/lang/String; = "android.sensor.pedometer"

.field public static final STRING_TYPE_PICK_UP_GESTURE:Ljava/lang/String; = "android.sensor.pick_up_gesture"

.field public static final STRING_TYPE_PRESSURE:Ljava/lang/String; = "android.sensor.pressure"

.field public static final STRING_TYPE_PROXIMITY:Ljava/lang/String; = "android.sensor.proximity"

.field public static final STRING_TYPE_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.sensor.relative_humidity"

.field public static final STRING_TYPE_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.rotation_vector"

.field public static final STRING_TYPE_SHAKE:Ljava/lang/String; = "android.sensor.shake"

.field public static final STRING_TYPE_SIGNIFICANT_MOTION:Ljava/lang/String; = "android.sensor.significant_motion"

.field public static final STRING_TYPE_STEP_COUNTER:Ljava/lang/String; = "android.sensor.step_counter"

.field public static final STRING_TYPE_STEP_DETECTOR:Ljava/lang/String; = "android.sensor.step_detector"

.field public static final STRING_TYPE_TEMPERATURE:Ljava/lang/String; = "android.sensor.temperature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_WAKE_GESTURE:Ljava/lang/String; = "android.sensor.wake_gesture"

.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ACTIVITY:I = 0x1c

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_FACE_DOWN:I = 0x1d

.field public static final TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final TYPE_GLANCE_GESTURE:I = 0x18

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final TYPE_HEART_RATE:I = 0x15

.field public static final TYPE_IN_POCKET:I = 0x1b

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PEDOMETER:I = 0x1a

.field public static final TYPE_PICK_UP_GESTURE:I = 0x19

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_SHAKE:I = 0x1e

.field public static final TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final TYPE_STEP_COUNTER:I = 0x13

.field public static final TYPE_STEP_DETECTOR:I = 0x12

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TILT_DETECTOR:I = 0x16

.field public static final TYPE_WAKE_GESTURE:I = 0x17

.field private static final sSensorReportingModes:[I


# instance fields
.field private mFifoMaxEventCount:I

.field private mFifoReservedEventCount:I

.field private mFlags:I

.field private mHandle:I

.field private mMaxDelay:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mRequiredPermission:Ljava/lang/String;

.field private mResolution:F

.field private mStringType:Ljava/lang/String;

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 617
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x5
        0x3
        0x3
        0x6
        0x4
        0x6
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x3
        0x6
        0x3
        0x3
        0x3
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    return-void
.end method

.method static getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .locals 3
    .param p0, "sensor"    # Landroid/hardware/Sensor;
    .param p1, "sdkLevel"    # I

    .prologue
    .line 669
    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/16 v1, 0x11

    if-gt p1, v1, :cond_0

    .line 671
    const/4 v1, 0x3

    .line 683
    :goto_0
    return v1

    .line 673
    :cond_0
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    .line 674
    .local v0, "offset":I
    sget-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 681
    const/16 v1, 0x10

    goto :goto_0

    .line 683
    :cond_1
    sget-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    aget v1, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getFifoMaxEventCount()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    return v0
.end method

.method public getFifoReservedEventCount()I
    .locals 1

    .prologue
    .line 771
    iget v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    return v0
.end method

.method public getHandle()I
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method public getMaxDelay()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    return v0
.end method

.method public getMaximumRange()F
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getReportingMode()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRequiredPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()F
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getStringType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method public isWakeUpSensor()Z
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setRange(FF)V
    .locals 0
    .param p1, "max"    # F
    .param p2, "res"    # F

    .prologue
    .line 859
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 860
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 861
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Sensor name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", vendor=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMinDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
