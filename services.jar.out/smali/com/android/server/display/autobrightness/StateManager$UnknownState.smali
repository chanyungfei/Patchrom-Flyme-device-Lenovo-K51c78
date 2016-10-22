.class Lcom/android/server/display/autobrightness/StateManager$UnknownState;
.super Lcom/android/server/display/autobrightness/StateManager$StateInterface;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/autobrightness/StateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/autobrightness/StateManager;)V
    .locals 1

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/server/display/autobrightness/StateManager$UnknownState;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    .line 193
    sget-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_UNKNOWN:Lcom/android/server/display/autobrightness/StateManager$STATE;

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/autobrightness/StateManager$StateInterface;-><init>(Lcom/android/server/display/autobrightness/StateManager;Lcom/android/server/display/autobrightness/StateManager$STATE;)V

    .line 194
    return-void
.end method


# virtual methods
.method public preProcess(F)Z
    .locals 1
    .param p1, "envLightLux"    # F

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method
