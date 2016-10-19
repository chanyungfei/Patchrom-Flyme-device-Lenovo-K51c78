.class Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandshakeState"
.end annotation


# static fields
.field private static final MAX_SUPPLICANT_LOOP_ITERATIONS:I = 0x5


# instance fields
.field private mLoopDetectCount:I

.field private mLoopDetectIndex:I

.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 365
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    iput v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    .line 367
    iput v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    .line 368
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 371
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 399
    :cond_1
    :goto_0
    return v2

    .line 374
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    .line 375
    .local v1, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v0, v1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 376
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    iget v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 378
    iget v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    .line 379
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLoopDetectIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", increase mLoopDetectCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_2
    iget v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_3

    .line 383
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supplicant loop detected, disabling network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget v3, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    const/4 v4, 0x3

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1200(Lcom/android/server/wifi/SupplicantStateTracker;II)V

    .line 388
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    .line 389
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$200(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v3

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$300(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 399
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x24006
        :pswitch_0
    .end packed-switch
.end method
