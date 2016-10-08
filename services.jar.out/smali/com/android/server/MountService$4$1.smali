.class Lcom/android/server/MountService$4$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$4;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$4;)V
    .locals 0

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/android/server/MountService$4$1;->this$1:Lcom/android/server/MountService$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1119
    # getter for: Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/MountService;->access$3600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService$4$1;->this$1:Lcom/android/server/MountService$4;

    iget-object v0, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/MountService;->enableUSBFuction(Z)V
    invoke-static {v0, v2}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;Z)V

    .line 1121
    monitor-exit v1

    .line 1122
    return-void

    .line 1121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
