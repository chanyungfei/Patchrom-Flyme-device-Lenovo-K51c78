.class Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GsmCallTrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GsmCallTrackerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;
    .param p2, "x1"    # Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$1;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 338
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    # invokes: Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->DmUpdateStatus()V
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->access$100(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)V

    .line 340
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 343
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    # getter for: Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->access$200(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_0

    .line 344
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    iget-boolean v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    iget-boolean v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    if-eqz v4, :cond_1

    .line 345
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    # getter for: Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->access$200(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAll()V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    # getter for: Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->access$200(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v1, v4

    .line 348
    .local v1, "count":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The count of connections is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 349
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 350
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    # getter for: Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->access$200(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v0, v4, v3

    .line 351
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    iget-boolean v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    iget-boolean v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    if-eqz v4, :cond_4

    .line 354
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    # getter for: Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->access$200(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    # getter for: Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->access$200(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 355
    :catch_0
    move-exception v2

    .line 356
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    const-string v5, "unexpected error on hangup"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 361
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1    # "count":I
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receives "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 364
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    # getter for: Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->access$200(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_0

    .line 365
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    # getter for: Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->access$200(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAll()V

    goto/16 :goto_0
.end method
