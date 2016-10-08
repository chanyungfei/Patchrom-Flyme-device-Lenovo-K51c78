.class Landroid/media/KaraokeService$OpenDeviceDeathHandler;
.super Ljava/lang/Object;
.source "KaraokeService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/KaraokeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenDeviceDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mPid:I

.field final synthetic this$0:Landroid/media/KaraokeService;


# direct methods
.method constructor <init>(Landroid/media/KaraokeService;Landroid/os/IBinder;I)V
    .locals 3
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I

    .prologue
    .line 446
    iput-object p1, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->this$0:Landroid/media/KaraokeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p2, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->mCb:Landroid/os/IBinder;

    .line 448
    iput p3, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->mPid:I

    .line 450
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add death handler pid %d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 455
    iget-object v0, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$400(Landroid/media/KaraokeService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 456
    :try_start_0
    iget-object v0, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$400(Landroid/media/KaraokeService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    const-string v0, "KaraokeService"

    const-string/jumbo v2, "unregistered opendevice() client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    :goto_0
    monitor-exit v1

    .line 466
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$400(Landroid/media/KaraokeService;)Ljava/util/HashMap;

    move-result-object v0

    iget v2, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->mPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v0, "KaraokeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove death handler pid %d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->this$0:Landroid/media/KaraokeService;

    # getter for: Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/KaraokeService;->access$400(Landroid/media/KaraokeService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->this$0:Landroid/media/KaraokeService;

    invoke-virtual {v0}, Landroid/media/KaraokeService;->closeKaraokeDevice()V

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->mCb:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->mCb:Landroid/os/IBinder;

    .line 477
    :cond_0
    return-void
.end method
