.class Lcom/android/server/MountService$10;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 2579
    iput-object p1, p0, Lcom/android/server/MountService$10;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2582
    # getter for: Lcom/android/server/MountService;->TURNONUSB_SYNC_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/MountService;->access$1200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2583
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService$10;->this$0:Lcom/android/server/MountService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 2584
    monitor-exit v1

    .line 2585
    return-void

    .line 2584
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
