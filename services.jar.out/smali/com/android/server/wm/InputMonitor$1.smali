.class Lcom/android/server/wm/InputMonitor$1;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/InputMonitor;->notifyConfigurationChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 531
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$100(Lcom/android/server/wm/InputMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$200(Lcom/android/server/wm/InputMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    invoke-static {v0, v2}, Lcom/android/server/wm/InputMonitor;->access$202(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 534
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$100(Lcom/android/server/wm/InputMonitor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 536
    :cond_0
    monitor-exit v1

    .line 537
    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
