.class Lcom/android/server/display/effect/DisplayEffectService$2;
.super Ljava/lang/Object;
.source "DisplayEffectService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/effect/DisplayEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/effect/DisplayEffectService;


# direct methods
.method constructor <init>(Lcom/android/server/display/effect/DisplayEffectService;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/display/effect/DisplayEffectService$2;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 93
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 85
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 87
    .local v0, "lux":F
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService$2;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v1, v0}, Lcom/android/server/display/effect/DisplayEffectService;->handleLightSensorEvent(F)V

    .line 88
    return-void
.end method
