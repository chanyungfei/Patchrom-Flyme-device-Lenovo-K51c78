.class public Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;
.super Ljava/util/TimerTask;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "timerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 4432
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4434
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v1, "CellInfo Timeout invoke getAllCellInfoByRate()"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4435
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2400()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4436
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timerTask schedule timer with period = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4437
    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2400()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 4440
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4447
    return-void
.end method
