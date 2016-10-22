.class Lcom/android/server/display/DisplayPowerState$1;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Lcom/android/server/display/autobrightness/LcdStepRate$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/lights/Light;Lcom/android/server/display/ColorFade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$1;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepRateScheduled()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$1;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mScreenState:I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$100(Lcom/android/server/display/DisplayPowerState;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$1;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->access$202(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 118
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$1;->this$0:Lcom/android/server/display/DisplayPowerState;

    # invokes: Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$300(Lcom/android/server/display/DisplayPowerState;)V

    .line 120
    :cond_0
    return-void
.end method
