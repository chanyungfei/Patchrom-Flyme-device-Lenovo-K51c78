.class final Lcom/android/server/am/BroadcastQueue$BroadcastHandler;
.super Landroid/os/Handler;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    .line 176
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 177
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 183
    :pswitch_0
    sget-boolean v0, Lcom/android/server/am/BroadcastQueue;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    const-string v0, "BroadcastQueue"

    const-string v1, "Received BROADCAST_INTENT_MSG"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V

    .line 190
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 181
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
