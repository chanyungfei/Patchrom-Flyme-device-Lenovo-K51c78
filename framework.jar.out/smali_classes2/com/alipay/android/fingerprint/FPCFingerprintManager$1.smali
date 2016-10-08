.class Lcom/alipay/android/fingerprint/FPCFingerprintManager$1;
.super Ljava/lang/Object;
.source "FPCFingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/fingerprint/FPCFingerprintManager;->runAsyncThread()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$1;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 523
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 524
    iget-object v0, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$1;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    # setter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhLooper:Landroid/os/Looper;
    invoke-static {v0, v1}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$502(Lcom/alipay/android/fingerprint/FPCFingerprintManager;Landroid/os/Looper;)Landroid/os/Looper;

    .line 526
    iget-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$1;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    monitor-enter v1

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$1;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    new-instance v2, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;

    iget-object v3, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$1;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;-><init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;Landroid/os/Looper;)V

    # setter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhHandler:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;
    invoke-static {v0, v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$602(Lcom/alipay/android/fingerprint/FPCFingerprintManager;Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;

    .line 529
    iget-object v0, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$1;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 530
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 532
    return-void

    .line 530
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
