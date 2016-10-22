.class Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$1;
.super Ljava/lang/Object;
.source "AutoBrightnessLenovo.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;


# direct methods
.method constructor <init>(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$1;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 783
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const-wide/16 v12, 0x0

    .line 741
    iget-object v8, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$1;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    # getter for: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorEnabled:Z
    invoke-static {v8}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->access$900(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 742
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 743
    .local v4, "time":J
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x0

    aget v2, v8, v9

    .line 745
    .local v2, "lux":F
    const-string v8, "AutoBrightnessLenovo.LightSensorSample"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSensorChanged: lux = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 750
    .local v0, "currentRealTime":J
    iget-object v8, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$1;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    # getter for: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorRegisterTime:J
    invoke-static {v8}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->access$1000(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_0

    .line 751
    iget-object v8, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$1;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    # getter for: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorRegisterTime:J
    invoke-static {v8}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->access$1000(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)J

    move-result-wide v8

    sub-long v6, v0, v8

    .line 753
    .local v6, "timeWait":J
    const-string v8, "--AutoBrightnessLenovo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LightSensorEnableDuration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v8, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$1;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    # setter for: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorRegisterTime:J
    invoke-static {v8, v12, v13}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->access$1002(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;J)J

    .line 758
    .end local v6    # "timeWait":J
    :cond_0
    float-to-double v8, v2

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_3

    .line 759
    iget-object v8, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$1;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    # setter for: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastNonZeroLuxTime:J
    invoke-static {v8, v0, v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->access$1102(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;J)J

    .line 776
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$1;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    # invokes: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->handleLightSensorEvent(JF)V
    invoke-static {v8, v4, v5, v2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->access$400(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;JF)V

    .line 778
    .end local v0    # "currentRealTime":J
    .end local v2    # "lux":F
    .end local v4    # "time":J
    :cond_2
    return-void

    .line 760
    .restart local v0    # "currentRealTime":J
    .restart local v2    # "lux":F
    .restart local v4    # "time":J
    :cond_3
    iget-object v8, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$1;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    # getter for: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mSplineManager:Lcom/android/server/display/autobrightness/SplineManager;
    invoke-static {v8}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->access$1200(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)Lcom/android/server/display/autobrightness/SplineManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/display/autobrightness/SplineManager;->getSplineName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->NIGHT_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-virtual {v9}, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 762
    iget-object v8, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$1;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    # getter for: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLightSensorMinLux:I
    invoke-static {v8}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->access$1300(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)I

    move-result v8

    int-to-float v3, v8

    .line 764
    .local v3, "minLux":F
    iget-object v8, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$1;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    # getter for: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mLastNonZeroLuxTime:J
    invoke-static {v8}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->access$1100(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)J

    move-result-wide v8

    sub-long v8, v0, v8

    const-wide/32 v10, 0x6ddd00

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 765
    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v3, v8

    .line 768
    :cond_4
    cmpg-float v8, v2, v3

    if-gez v8, :cond_1

    .line 769
    const-string v8, "AutoBrightnessLenovo.LightSensorSample"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lux too small, change to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    move v2, v3

    goto :goto_0
.end method
