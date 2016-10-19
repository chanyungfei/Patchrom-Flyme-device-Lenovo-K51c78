.class Lcom/android/server/display/autobrightness/StateManager$FixedState;
.super Lcom/android/server/display/autobrightness/StateManager$StateInterface;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/autobrightness/StateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/autobrightness/StateManager;)V
    .locals 1

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/server/display/autobrightness/StateManager$FixedState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    .line 204
    sget-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_FIXED:Lcom/android/server/display/autobrightness/StateManager$STATE;

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/autobrightness/StateManager$StateInterface;-><init>(Lcom/android/server/display/autobrightness/StateManager;Lcom/android/server/display/autobrightness/StateManager$STATE;)V

    .line 205
    return-void
.end method


# virtual methods
.method public preProcess(F)Z
    .locals 1
    .param p1, "envLightLux"    # F

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method
