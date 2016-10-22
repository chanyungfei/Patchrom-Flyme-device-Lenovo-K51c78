.class abstract Lcom/android/server/display/autobrightness/StateManager$StateInterface;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "StateInterface"
.end annotation


# instance fields
.field protected mStateType:Lcom/android/server/display/autobrightness/StateManager$STATE;

.field final synthetic this$0:Lcom/android/server/display/autobrightness/StateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/autobrightness/StateManager;Lcom/android/server/display/autobrightness/StateManager$STATE;)V
    .locals 0
    .param p2, "stateType"    # Lcom/android/server/display/autobrightness/StateManager$STATE;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/server/display/autobrightness/StateManager$StateInterface;->this$0:Lcom/android/server/display/autobrightness/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p2, p0, Lcom/android/server/display/autobrightness/StateManager$StateInterface;->mStateType:Lcom/android/server/display/autobrightness/StateManager$STATE;

    .line 279
    return-void
.end method


# virtual methods
.method public abstract preProcess(F)Z
.end method
