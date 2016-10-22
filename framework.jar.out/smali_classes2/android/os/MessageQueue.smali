.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_DUMP_SIZE_MAX:I = 0x14


# instance fields
.field private mBlocked:Z

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:J

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method constructor <init>(Z)V
    .locals 2
    .param p1, "quitAllowed"    # Z

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 110
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 111
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 112
    return-void
.end method

.method private dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 126
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 127
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    .line 128
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 130
    :cond_0
    return-void
.end method

.method private isIdlingLocked()Z
    .locals 2

    .prologue
    .line 424
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsIdling(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeInit()J
.end method

.method private static native nativeIsIdling(J)Z
.end method

.method private static native nativePollOnce(JI)V
.end method

.method private static native nativeWake(J)V
.end method

.method private removeAllFutureMessagesLocked()V
    .locals 6

    .prologue
    .line 539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 540
    .local v2, "now":J
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 541
    .local v1, "p":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 542
    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    .line 543
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 554
    .local v0, "n":Landroid/os/Message;
    :cond_1
    move-object v1, v0

    .line 547
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 548
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 551
    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 556
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 558
    :cond_3
    move-object v1, v0

    .line 559
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 560
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 561
    if-nez v0, :cond_3

    goto :goto_0
.end method

.method private removeAllMessagesLocked()V
    .locals 3

    .prologue
    .line 529
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 530
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_0

    .line 531
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 532
    .local v0, "n":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 533
    move-object v1, v0

    .line 534
    goto :goto_0

    .line 535
    .end local v0    # "n":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 536
    return-void
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    monitor-exit p0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 567
    monitor-enter p0

    .line 568
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 569
    .local v2, "now":J
    const/4 v1, 0x0

    .line 570
    .local v1, "n":I
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v0, "msg":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 572
    add-int/lit8 v1, v1, 0x1

    .line 570
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 574
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(Total messages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", idling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdlingLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", quitting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 576
    monitor-exit p0

    .line 577
    return-void

    .line 576
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "n":I
    .end local v2    # "now":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public final declared-synchronized dumpMessageQueue()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x14

    .line 587
    monitor-enter p0

    :try_start_0
    const-string v1, ""

    .line 588
    .local v1, "messageQueue":Ljava/lang/String;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 589
    const-string v3, "MessageQueue"

    const-string v4, "Dump first 20 messages in Queue: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Dump first "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " messages in Queue: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 592
    .local v2, "tempMsg":Landroid/os/Message;
    const/4 v0, 0x0

    .line 593
    .local v0, "count":I
    :goto_0
    if-eqz v2, :cond_1

    .line 594
    add-int/lit8 v0, v0, 0x1

    .line 595
    if-gt v0, v6, :cond_0

    .line 596
    const-string v3, "MessageQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump Message in Queue ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Dump Message in Queue ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 599
    :cond_0
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 602
    :cond_1
    const-string v3, "MessageQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total Message Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Total Message Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 608
    .end local v0    # "count":I
    .end local v2    # "tempMsg":Landroid/os/Message;
    :goto_1
    monitor-exit p0

    return-object v1

    .line 605
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMessages is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 606
    const-string v3, "MessageQueue"

    const-string v4, "mMessages is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 587
    .end local v1    # "messageQueue":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method enqueueMessage(Landroid/os/Message;J)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 321
    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_0

    .line 322
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Message must have a target."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 324
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 325
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " This message is already in use."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 329
    :cond_1
    iget-boolean v5, p1, Landroid/os/Message;->hasRecycle:Z

    if-eqz v5, :cond_2

    .line 330
    const-string v4, "MessageQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Warning: message has been recycled. msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return v1

    .line 335
    :cond_2
    monitor-enter p0

    .line 336
    :try_start_0
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v5, :cond_3

    .line 337
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sending message to a Handler on a dead thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 341
    monitor-exit p0

    goto :goto_0

    .line 377
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 344
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 345
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 346
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 348
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-eqz v5, :cond_4

    iget-wide v6, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v6

    if-gez v5, :cond_6

    .line 350
    :cond_4
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 351
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 352
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 374
    .local v1, "needWake":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 375
    iget-wide v6, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v6, v7}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 377
    :cond_5
    monitor-exit p0

    move v1, v4

    .line 378
    goto :goto_0

    .line 357
    .end local v1    # "needWake":Z
    :cond_6
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v5, :cond_7

    iget-object v5, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_7

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v5

    if-eqz v5, :cond_7

    move v1, v4

    .line 360
    .restart local v1    # "needWake":Z
    :cond_7
    :goto_2
    move-object v3, v2

    .line 361
    .local v3, "prev":Landroid/os/Message;
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 362
    if-eqz v2, :cond_8

    iget-wide v6, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v6

    if-gez v5, :cond_9

    .line 369
    :cond_8
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 370
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 365
    :cond_9
    if-eqz v1, :cond_7

    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_7

    .line 366
    const/4 v1, 0x0

    goto :goto_2
.end method

.method enqueueSyncBarrier(J)I
    .locals 7
    .param p1, "when"    # J

    .prologue
    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    iget v3, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 264
    .local v3, "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 265
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->markInUse()V

    .line 266
    iput-wide p1, v0, Landroid/os/Message;->when:J

    .line 267
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, "prev":Landroid/os/Message;
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 271
    .local v1, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    .line 272
    :goto_0
    if-eqz v1, :cond_0

    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    .line 273
    move-object v2, v1

    .line 274
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 277
    :cond_0
    if-eqz v2, :cond_1

    .line 278
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 279
    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 284
    :goto_1
    monitor-exit p0

    return v3

    .line 281
    :cond_1
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 282
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_1

    .line 285
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v2    # "prev":Landroid/os/Message;
    .end local v3    # "token":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 121
    return-void

    .line 119
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 382
    if-nez p1, :cond_0

    .line 394
    :goto_0
    return v1

    .line 386
    :cond_0
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 388
    .local v0, "p":Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    .line 389
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget v2, v0, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 390
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 395
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 392
    .restart local v0    # "p":Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 394
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 399
    if-nez p1, :cond_0

    .line 411
    :goto_0
    return v1

    .line 403
    :cond_0
    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 405
    .local v0, "p":Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    .line 406
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget-object v2, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 407
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 412
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 409
    .restart local v0    # "p":Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 411
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method isIdling()Z
    .locals 1

    .prologue
    .line 416
    monitor-enter p0

    .line 417
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdlingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method next()Landroid/os/Message;
    .locals 18

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/os/MessageQueue;->mPtr:J

    .line 137
    .local v12, "ptr":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_0

    .line 138
    const/4 v5, 0x0

    .line 186
    :goto_0
    return-object v5

    .line 141
    :cond_0
    const/4 v7, -0x1

    .line 142
    .local v7, "pendingIdleHandlerCount":I
    const/4 v6, 0x0

    .line 144
    .local v6, "nextPollTimeoutMillis":I
    :goto_1
    if-eqz v6, :cond_1

    .line 145
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 148
    :cond_1
    invoke-static {v12, v13, v6}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 150
    monitor-enter p0

    .line 152
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 153
    .local v8, "now":J
    const/4 v10, 0x0

    .line 154
    .local v10, "prevMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 155
    .local v5, "msg":Landroid/os/Message;
    if-eqz v5, :cond_3

    iget-object v14, v5, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v14, :cond_3

    .line 158
    :cond_2
    move-object v10, v5

    .line 159
    iget-object v5, v5, Landroid/os/Message;->next:Landroid/os/Message;

    .line 160
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/os/Message;->isAsynchronous()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 162
    :cond_3
    if-eqz v5, :cond_6

    .line 163
    iget-wide v14, v5, Landroid/os/Message;->when:J

    cmp-long v14, v8, v14

    if-gez v14, :cond_4

    .line 165
    iget-wide v14, v5, Landroid/os/Message;->when:J

    sub-long/2addr v14, v8

    const-wide/32 v16, 0x7fffffff

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v6, v14

    .line 184
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v14, :cond_7

    .line 185
    invoke-direct/range {p0 .. p0}, Landroid/os/MessageQueue;->dispose()V

    .line 186
    const/4 v5, 0x0

    monitor-exit p0

    goto :goto_0

    .line 206
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "now":J
    .end local v10    # "prevMsg":Landroid/os/Message;
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 168
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v8    # "now":J
    .restart local v10    # "prevMsg":Landroid/os/Message;
    :cond_4
    const/4 v14, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 169
    if-eqz v10, :cond_5

    .line 170
    iget-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v14, v10, Landroid/os/Message;->next:Landroid/os/Message;

    .line 174
    :goto_3
    const/4 v14, 0x0

    iput-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    .line 176
    monitor-exit p0

    goto :goto_0

    .line 172
    :cond_5
    iget-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_3

    .line 180
    :cond_6
    const/4 v6, -0x1

    goto :goto_2

    .line 192
    :cond_7
    if-gez v7, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v14, v14, Landroid/os/Message;->when:J

    cmp-long v14, v8, v14

    if-gez v14, :cond_9

    .line 194
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 196
    :cond_9
    if-gtz v7, :cond_a

    .line 198
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 199
    monitor-exit p0

    goto :goto_1

    .line 202
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v14, :cond_b

    .line 203
    const/4 v14, 0x4

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    new-array v14, v14, [Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 205
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 206
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v7, :cond_d

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v3, v14, v2

    .line 212
    .local v3, "idler":Landroid/os/MessageQueue$IdleHandler;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v15, 0x0

    aput-object v15, v14, v2

    .line 214
    const/4 v4, 0x0

    .line 216
    .local v4, "keep":Z
    :try_start_2
    invoke-interface {v3}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    .line 221
    :goto_5
    if-nez v4, :cond_c

    .line 222
    monitor-enter p0

    .line 223
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 210
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 217
    :catch_0
    move-exception v11

    .line 218
    .local v11, "t":Ljava/lang/Throwable;
    const-string v14, "MessageQueue"

    const-string v15, "IdleHandler threw exception"

    invoke-static {v14, v15, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 224
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v14

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v14

    .line 229
    .end local v3    # "idler":Landroid/os/MessageQueue$IdleHandler;
    .end local v4    # "keep":Z
    :cond_d
    const/4 v7, 0x0

    .line 233
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method quit(Z)V
    .locals 2
    .param p1, "safe"    # Z

    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    monitor-enter p0

    .line 243
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_1

    .line 244
    monitor-exit p0

    .line 257
    :goto_0
    return-void

    .line 246
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 248
    if-eqz p1, :cond_2

    .line 249
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    .line 255
    :goto_1
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 256
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 251
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 496
    if-nez p1, :cond_0

    .line 526
    :goto_0
    return-void

    .line 500
    :cond_0
    monitor-enter p0

    .line 501
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 505
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_2

    .line 506
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 507
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 508
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 509
    move-object v2, v0

    .line 510
    goto :goto_1

    .line 513
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 514
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 515
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 516
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_4

    .line 517
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 518
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 519
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 525
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 523
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 524
    goto :goto_2

    .line 525
    .end local v0    # "n":Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    monitor-exit p0

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 459
    :goto_0
    return-void

    .line 432
    :cond_0
    monitor-enter p0

    .line 433
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 437
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_2

    .line 438
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 439
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 440
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 441
    move-object v2, v0

    .line 442
    goto :goto_1

    .line 445
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 446
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 447
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 448
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    .line 450
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 451
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 452
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 458
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 456
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 457
    goto :goto_2

    .line 458
    .end local v0    # "n":Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 462
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    monitor-enter p0

    .line 467
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 471
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_3

    if-eqz p3, :cond_2

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_3

    .line 472
    :cond_2
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 473
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 474
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 475
    move-object v2, v0

    .line 476
    goto :goto_1

    .line 479
    .end local v0    # "n":Landroid/os/Message;
    :cond_3
    :goto_2
    if-eqz v2, :cond_6

    .line 480
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 481
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_5

    .line 482
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_5

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_5

    .line 484
    :cond_4
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 485
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 486
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 492
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 490
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_5
    move-object v2, v0

    .line 491
    goto :goto_2

    .line 492
    .end local v0    # "n":Landroid/os/Message;
    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method removeSyncBarrier(I)V
    .locals 6
    .param p1, "token"    # I

    .prologue
    .line 291
    monitor-enter p0

    .line 292
    const/4 v2, 0x0

    .line 293
    .local v2, "prev":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 294
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_0

    iget v3, v1, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_1

    .line 295
    :cond_0
    move-object v2, v1

    .line 296
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 298
    :cond_1
    if-nez v1, :cond_2

    .line 299
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 317
    .end local v1    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 303
    .restart local v1    # "p":Landroid/os/Message;
    :cond_2
    if-eqz v2, :cond_4

    .line 304
    :try_start_1
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 305
    const/4 v0, 0x0

    .line 310
    .local v0, "needWake":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 314
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v3, :cond_3

    .line 315
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 317
    :cond_3
    monitor-exit p0

    .line 318
    return-void

    .line 307
    .end local v0    # "needWake":Z
    :cond_4
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 308
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->target:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "needWake":Z
    :goto_2
    goto :goto_1

    .end local v0    # "needWake":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method
