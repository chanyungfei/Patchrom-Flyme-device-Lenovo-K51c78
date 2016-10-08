.class Lcom/android/server/display/autobrightness/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/autobrightness/StateManager$StateChangeCallback;,
        Lcom/android/server/display/autobrightness/StateManager$StateInterface;,
        Lcom/android/server/display/autobrightness/StateManager$DarkState;,
        Lcom/android/server/display/autobrightness/StateManager$DimState;,
        Lcom/android/server/display/autobrightness/StateManager$BrightState;,
        Lcom/android/server/display/autobrightness/StateManager$FixedState;,
        Lcom/android/server/display/autobrightness/StateManager$UnknownState;,
        Lcom/android/server/display/autobrightness/StateManager$STATE;
    }
.end annotation


# static fields
.field private static final SUPPORT_STATE_CHANGE:Z = true

.field private static final TAG:Ljava/lang/String; = "AutoBrightnessLenovo.StateManager"

.field private static final TIME_BRIGHT_TO_DARK_MS:J = 0xbb8L

.field private static final TIME_BRIGHT_TO_DIM_MS:J = 0x0L

.field private static final TIME_DARK_TO_BRIGHT_MS:J = 0x1f4L

.field private static final TIME_DIM_TO_BRIGHT_MS:J = 0x0L

.field private static final TIME_DIM_TO_DARK_MS:J = 0xbb8L


# instance fields
.field private mAllStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/display/autobrightness/StateManager$STATE;",
            "Lcom/android/server/display/autobrightness/StateManager$StateInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightStateBoundaryLux:F

.field private mChangeStateRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/android/server/display/autobrightness/StateManager$STATE;

.field private mDarkStateBoundaryLux:F

.field private mHandler:Landroid/os/Handler;

.field private mIsStateJustChanged:Z

.field private mLastState:Lcom/android/server/display/autobrightness/StateManager$STATE;

.field private mNextState:Lcom/android/server/display/autobrightness/StateManager$STATE;

.field private mNextStateEntryLux:F

.field private mResources:Landroid/content/res/Resources;

.field private mStateChangeCallback:Lcom/android/server/display/autobrightness/StateManager$StateChangeCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/display/autobrightness/StateManager$StateChangeCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "stateChangeCallback"    # Lcom/android/server/display/autobrightness/StateManager$StateChangeCallback;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mAllStates:Ljava/util/HashMap;

    .line 35
    sget-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_UNKNOWN:Lcom/android/server/display/autobrightness/StateManager$STATE;

    iput-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mCurrentState:Lcom/android/server/display/autobrightness/StateManager$STATE;

    .line 36
    sget-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_UNKNOWN:Lcom/android/server/display/autobrightness/StateManager$STATE;

    iput-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mLastState:Lcom/android/server/display/autobrightness/StateManager$STATE;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mIsStateJustChanged:Z

    .line 47
    new-instance v0, Lcom/android/server/display/autobrightness/StateManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/autobrightness/StateManager$1;-><init>(Lcom/android/server/display/autobrightness/StateManager;)V

    iput-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mChangeStateRunnable:Ljava/lang/Runnable;

    .line 61
    iput-object p1, p0, Lcom/android/server/display/autobrightness/StateManager;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mResources:Landroid/content/res/Resources;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p3, p0, Lcom/android/server/display/autobrightness/StateManager;->mStateChangeCallback:Lcom/android/server/display/autobrightness/StateManager$StateChangeCallback;

    .line 67
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/StateManager;->init()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/autobrightness/StateManager;)Lcom/android/server/display/autobrightness/StateManager$STATE;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/StateManager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mNextState:Lcom/android/server/display/autobrightness/StateManager$STATE;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/autobrightness/StateManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/StateManager;

    .prologue
    .line 14
    iget v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mNextStateEntryLux:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/autobrightness/StateManager;Lcom/android/server/display/autobrightness/StateManager$STATE;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/StateManager;
    .param p1, "x1"    # Lcom/android/server/display/autobrightness/StateManager$STATE;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/server/display/autobrightness/StateManager;->setCurrentState(Lcom/android/server/display/autobrightness/StateManager$STATE;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/autobrightness/StateManager;)Lcom/android/server/display/autobrightness/StateManager$StateChangeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/StateManager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mStateChangeCallback:Lcom/android/server/display/autobrightness/StateManager$StateChangeCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/autobrightness/StateManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/StateManager;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/StateManager;->getLuxBoundaryHigh()F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/autobrightness/StateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/StateManager;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/StateManager;->cancelStateChange()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/autobrightness/StateManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/StateManager;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/StateManager;->getLuxBoundaryLow()F

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/autobrightness/StateManager;Lcom/android/server/display/autobrightness/StateManager$STATE;JF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/StateManager;
    .param p1, "x1"    # Lcom/android/server/display/autobrightness/StateManager$STATE;
    .param p2, "x2"    # J
    .param p4, "x3"    # F

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/autobrightness/StateManager;->setNextState(Lcom/android/server/display/autobrightness/StateManager$STATE;JF)V

    return-void
.end method

.method private cancelStateChange()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/autobrightness/StateManager;->mChangeStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method private getLuxBoundaryHigh()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mBrightStateBoundaryLux:F

    return v0
.end method

.method private getLuxBoundaryLow()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mDarkStateBoundaryLux:F

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x10e007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mBrightStateBoundaryLux:F

    .line 145
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x10e0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mDarkStateBoundaryLux:F

    .line 149
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mAllStates:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_UNKNOWN:Lcom/android/server/display/autobrightness/StateManager$STATE;

    new-instance v2, Lcom/android/server/display/autobrightness/StateManager$UnknownState;

    invoke-direct {v2, p0}, Lcom/android/server/display/autobrightness/StateManager$UnknownState;-><init>(Lcom/android/server/display/autobrightness/StateManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mAllStates:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_FIXED:Lcom/android/server/display/autobrightness/StateManager$STATE;

    new-instance v2, Lcom/android/server/display/autobrightness/StateManager$FixedState;

    invoke-direct {v2, p0}, Lcom/android/server/display/autobrightness/StateManager$FixedState;-><init>(Lcom/android/server/display/autobrightness/StateManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mAllStates:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_BRIGHT:Lcom/android/server/display/autobrightness/StateManager$STATE;

    new-instance v2, Lcom/android/server/display/autobrightness/StateManager$BrightState;

    invoke-direct {v2, p0}, Lcom/android/server/display/autobrightness/StateManager$BrightState;-><init>(Lcom/android/server/display/autobrightness/StateManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mAllStates:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_DIM:Lcom/android/server/display/autobrightness/StateManager$STATE;

    new-instance v2, Lcom/android/server/display/autobrightness/StateManager$DimState;

    invoke-direct {v2, p0}, Lcom/android/server/display/autobrightness/StateManager$DimState;-><init>(Lcom/android/server/display/autobrightness/StateManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mAllStates:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_DARK:Lcom/android/server/display/autobrightness/StateManager$STATE;

    new-instance v2, Lcom/android/server/display/autobrightness/StateManager$DarkState;

    invoke-direct {v2, p0}, Lcom/android/server/display/autobrightness/StateManager$DarkState;-><init>(Lcom/android/server/display/autobrightness/StateManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method private setCurrentState(Lcom/android/server/display/autobrightness/StateManager$STATE;)V
    .locals 1
    .param p1, "state"    # Lcom/android/server/display/autobrightness/StateManager$STATE;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mCurrentState:Lcom/android/server/display/autobrightness/StateManager$STATE;

    if-ne p1, v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mCurrentState:Lcom/android/server/display/autobrightness/StateManager$STATE;

    iput-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mLastState:Lcom/android/server/display/autobrightness/StateManager$STATE;

    .line 162
    iput-object p1, p0, Lcom/android/server/display/autobrightness/StateManager;->mCurrentState:Lcom/android/server/display/autobrightness/StateManager$STATE;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mIsStateJustChanged:Z

    goto :goto_0
.end method

.method private setNextState(Lcom/android/server/display/autobrightness/StateManager$STATE;JF)V
    .locals 4
    .param p1, "nextState"    # Lcom/android/server/display/autobrightness/StateManager$STATE;
    .param p2, "delayMS"    # J
    .param p4, "nextStateEntryLux"    # F

    .prologue
    .line 180
    const-string v0, "AutoBrightnessLenovo.StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNextState: to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/display/autobrightness/StateManager$STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/StateManager;->cancelStateChange()V

    .line 186
    iput-object p1, p0, Lcom/android/server/display/autobrightness/StateManager;->mNextState:Lcom/android/server/display/autobrightness/StateManager$STATE;

    .line 187
    iput p4, p0, Lcom/android/server/display/autobrightness/StateManager;->mNextStateEntryLux:F

    .line 188
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/autobrightness/StateManager;->mChangeStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    return-void
.end method


# virtual methods
.method public clearState()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "AutoBrightnessLenovo.StateManager"

    const-string v1, "clearState"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/StateManager;->cancelStateChange()V

    .line 109
    sget-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_UNKNOWN:Lcom/android/server/display/autobrightness/StateManager$STATE;

    iput-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mCurrentState:Lcom/android/server/display/autobrightness/StateManager$STATE;

    .line 110
    return-void
.end method

.method public getCurrentState()Lcom/android/server/display/autobrightness/StateManager$STATE;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mCurrentState:Lcom/android/server/display/autobrightness/StateManager$STATE;

    return-object v0
.end method

.method public getLastState()Lcom/android/server/display/autobrightness/StateManager$STATE;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mLastState:Lcom/android/server/display/autobrightness/StateManager$STATE;

    return-object v0
.end method

.method public initState(F)V
    .locals 3
    .param p1, "envLightLux"    # F

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mBrightStateBoundaryLux:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 93
    sget-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_BRIGHT:Lcom/android/server/display/autobrightness/StateManager$STATE;

    invoke-direct {p0, v0}, Lcom/android/server/display/autobrightness/StateManager;->setCurrentState(Lcom/android/server/display/autobrightness/StateManager$STATE;)V

    .line 99
    :goto_0
    const-string v0, "AutoBrightnessLenovo.StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initState: init state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/autobrightness/StateManager;->mCurrentState:Lcom/android/server/display/autobrightness/StateManager$STATE;

    invoke-virtual {v2}, Lcom/android/server/display/autobrightness/StateManager$STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 95
    :cond_0
    sget-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_DARK:Lcom/android/server/display/autobrightness/StateManager$STATE;

    invoke-direct {p0, v0}, Lcom/android/server/display/autobrightness/StateManager;->setCurrentState(Lcom/android/server/display/autobrightness/StateManager$STATE;)V

    goto :goto_0
.end method

.method public isStateJustChanged()Z
    .locals 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mIsStateJustChanged:Z

    .line 132
    .local v0, "isStateJustChanged":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/autobrightness/StateManager;->mIsStateJustChanged:Z

    .line 133
    return v0
.end method

.method public preProcess(F)Z
    .locals 2
    .param p1, "envLightLux"    # F

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mAllStates:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/display/autobrightness/StateManager;->mCurrentState:Lcom/android/server/display/autobrightness/StateManager$STATE;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/autobrightness/StateManager$StateInterface;

    invoke-virtual {v0, p1}, Lcom/android/server/display/autobrightness/StateManager$StateInterface;->preProcess(F)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/display/autobrightness/StateManager;->mCurrentState:Lcom/android/server/display/autobrightness/StateManager$STATE;

    invoke-virtual {v0}, Lcom/android/server/display/autobrightness/StateManager$STATE;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
