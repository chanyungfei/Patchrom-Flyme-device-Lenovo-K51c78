.class Lcom/android/server/display/autobrightness/StateManager$BrightState;
.super Lcom/android/server/display/autobrightness/StateManager$StateInterface;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/autobrightness/StateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/autobrightness/StateManager;)V
    .locals 1

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/server/display/autobrightness/StateManager$BrightState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    .line 215
    sget-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_BRIGHT:Lcom/android/server/display/autobrightness/StateManager$STATE;

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/autobrightness/StateManager$StateInterface;-><init>(Lcom/android/server/display/autobrightness/StateManager;Lcom/android/server/display/autobrightness/StateManager$STATE;)V

    .line 216
    return-void
.end method


# virtual methods
.method public preProcess(F)Z
    .locals 6
    .param p1, "envLightLux"    # F

    .prologue
    const/4 v0, 0x1

    .line 220
    iget-object v1, p0, Lcom/android/server/display/autobrightness/StateManager$BrightState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    # invokes: Lcom/android/server/display/autobrightness/StateManager;->getLuxBoundaryHigh()F
    invoke-static {v1}, Lcom/android/server/display/autobrightness/StateManager;->access$400(Lcom/android/server/display/autobrightness/StateManager;)F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/server/display/autobrightness/StateManager$BrightState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    # invokes: Lcom/android/server/display/autobrightness/StateManager;->cancelStateChange()V
    invoke-static {v1}, Lcom/android/server/display/autobrightness/StateManager;->access$500(Lcom/android/server/display/autobrightness/StateManager;)V

    .line 228
    :goto_0
    return v0

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/autobrightness/StateManager$BrightState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    # invokes: Lcom/android/server/display/autobrightness/StateManager;->getLuxBoundaryLow()F
    invoke-static {v1}, Lcom/android/server/display/autobrightness/StateManager;->access$600(Lcom/android/server/display/autobrightness/StateManager;)F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager$BrightState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    sget-object v1, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_DARK:Lcom/android/server/display/autobrightness/StateManager$STATE;

    const-wide/16 v2, 0xbb8

    # invokes: Lcom/android/server/display/autobrightness/StateManager;->setNextState(Lcom/android/server/display/autobrightness/StateManager$STATE;JF)V
    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/display/autobrightness/StateManager;->access$700(Lcom/android/server/display/autobrightness/StateManager;Lcom/android/server/display/autobrightness/StateManager$STATE;JF)V

    .line 225
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/autobrightness/StateManager$BrightState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    sget-object v2, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_DIM:Lcom/android/server/display/autobrightness/StateManager$STATE;

    const-wide/16 v4, 0x0

    # invokes: Lcom/android/server/display/autobrightness/StateManager;->setNextState(Lcom/android/server/display/autobrightness/StateManager$STATE;JF)V
    invoke-static {v1, v2, v4, v5, p1}, Lcom/android/server/display/autobrightness/StateManager;->access$700(Lcom/android/server/display/autobrightness/StateManager;Lcom/android/server/display/autobrightness/StateManager$STATE;JF)V

    goto :goto_0
.end method
