.class Lcom/fingerprints/service/FingerprintManager$1;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingerprints/service/FingerprintManager;->runAsyncThread()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/fingerprints/service/FingerprintManager;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager$1;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 518
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 519
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$1;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    # setter for: Lcom/fingerprints/service/FingerprintManager;->mEventhLooper:Landroid/os/Looper;
    invoke-static {v0, v1}, Lcom/fingerprints/service/FingerprintManager;->access$502(Lcom/fingerprints/service/FingerprintManager;Landroid/os/Looper;)Landroid/os/Looper;

    .line 521
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager$1;->this$0:Lcom/fingerprints/service/FingerprintManager;

    monitor-enter v1

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$1;->this$0:Lcom/fingerprints/service/FingerprintManager;

    new-instance v2, Lcom/fingerprints/service/FingerprintManager$EventHandler;

    iget-object v3, p0, Lcom/fingerprints/service/FingerprintManager$1;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fingerprints/service/FingerprintManager$EventHandler;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/os/Looper;)V

    # setter for: Lcom/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;
    invoke-static {v0, v2}, Lcom/fingerprints/service/FingerprintManager;->access$602(Lcom/fingerprints/service/FingerprintManager;Lcom/fingerprints/service/FingerprintManager$EventHandler;)Lcom/fingerprints/service/FingerprintManager$EventHandler;

    .line 524
    const-string v0, "Fingerprintmanager"

    const-string v2, "thread notify"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$1;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 526
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 528
    return-void

    .line 526
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
