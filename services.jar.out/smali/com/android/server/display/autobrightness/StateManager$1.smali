.class Lcom/android/server/display/autobrightness/StateManager$1;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/autobrightness/StateManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/autobrightness/StateManager;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/server/display/autobrightness/StateManager$1;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "AutoBrightnessLenovo.StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mChangeStateRunnable: change state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/autobrightness/StateManager$1;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    # getter for: Lcom/android/server/display/autobrightness/StateManager;->mNextState:Lcom/android/server/display/autobrightness/StateManager$STATE;
    invoke-static {v2}, Lcom/android/server/display/autobrightness/StateManager;->access$000(Lcom/android/server/display/autobrightness/StateManager;)Lcom/android/server/display/autobrightness/StateManager$STATE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/autobrightness/StateManager$STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNextStateEntryLux = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/autobrightness/StateManager$1;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    # getter for: Lcom/android/server/display/autobrightness/StateManager;->mNextStateEntryLux:F
    invoke-static {v2}, Lcom/android/server/display/autobrightness/StateManager;->access$100(Lcom/android/server/display/autobrightness/StateManager;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager$1;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    iget-object v1, p0, Lcom/android/server/display/autobrightness/StateManager$1;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    # getter for: Lcom/android/server/display/autobrightness/StateManager;->mNextState:Lcom/android/server/display/autobrightness/StateManager$STATE;
    invoke-static {v1}, Lcom/android/server/display/autobrightness/StateManager;->access$000(Lcom/android/server/display/autobrightness/StateManager;)Lcom/android/server/display/autobrightness/StateManager$STATE;

    move-result-object v1

    # invokes: Lcom/android/server/display/autobrightness/StateManager;->setCurrentState(Lcom/android/server/display/autobrightness/StateManager$STATE;)V
    invoke-static {v0, v1}, Lcom/android/server/display/autobrightness/StateManager;->access$200(Lcom/android/server/display/autobrightness/StateManager;Lcom/android/server/display/autobrightness/StateManager$STATE;)V

    .line 56
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager$1;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    # getter for: Lcom/android/server/display/autobrightness/StateManager;->mStateChangeCallback:Lcom/android/server/display/autobrightness/StateManager$StateChangeCallback;
    invoke-static {v0}, Lcom/android/server/display/autobrightness/StateManager;->access$300(Lcom/android/server/display/autobrightness/StateManager;)Lcom/android/server/display/autobrightness/StateManager$StateChangeCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/autobrightness/StateManager$1;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    # getter for: Lcom/android/server/display/autobrightness/StateManager;->mNextStateEntryLux:F
    invoke-static {v1}, Lcom/android/server/display/autobrightness/StateManager;->access$100(Lcom/android/server/display/autobrightness/StateManager;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/display/autobrightness/StateManager$StateChangeCallback;->onStateChange(F)V

    .line 57
    return-void
.end method
