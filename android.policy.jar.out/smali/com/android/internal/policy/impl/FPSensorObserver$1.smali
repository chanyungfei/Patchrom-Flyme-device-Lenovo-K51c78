.class Lcom/android/internal/policy/impl/FPSensorObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "FPSensorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/FPSensorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/FPSensorObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/FPSensorObserver;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$1;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 198
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "action":Ljava/lang/String;
    const-string v1, "FingerprintObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$1;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    iget-object v2, v1, Lcom/android/internal/policy/impl/FPSensorObserver;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 204
    :try_start_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    const-string v1, "FingerprintObserver"

    const-string v3, "onReceive ACTION_BOOT_COMPLETED."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/FPSensorObserver;->isBootCompleted:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$002(Z)Z

    .line 207
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$1;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    # getter for: Lcom/android/internal/policy/impl/FPSensorObserver;->isWaitForBootCompleted:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$100(Lcom/android/internal/policy/impl/FPSensorObserver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$1;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    # getter for: Lcom/android/internal/policy/impl/FPSensorObserver;->bRequestVerify:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$200(Lcom/android/internal/policy/impl/FPSensorObserver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$1;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    # getter for: Lcom/android/internal/policy/impl/FPSensorObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$300(Lcom/android/internal/policy/impl/FPSensorObserver;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x65

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$1;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/policy/impl/FPSensorObserver;->isWaitForBootCompleted:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$102(Lcom/android/internal/policy/impl/FPSensorObserver;Z)Z

    .line 213
    :cond_1
    monitor-exit v2

    .line 256
    :goto_0
    return-void

    .line 216
    :cond_2
    const-string v1, "com.lenovo.fingerprint.verification.start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$1;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/policy/impl/FPSensorObserver;->bRequestVerify:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$202(Lcom/android/internal/policy/impl/FPSensorObserver;Z)Z

    .line 218
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$1;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    # setter for: Lcom/android/internal/policy/impl/FPSensorObserver;->mAction:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$402(Lcom/android/internal/policy/impl/FPSensorObserver;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$1;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    # getter for: Lcom/android/internal/policy/impl/FPSensorObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$300(Lcom/android/internal/policy/impl/FPSensorObserver;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x65

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 231
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$1;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    # getter for: Lcom/android/internal/policy/impl/FPSensorObserver;->isOnVerifing:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$600(Lcom/android/internal/policy/impl/FPSensorObserver;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 232
    monitor-exit v2

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 224
    :cond_4
    :try_start_1
    const-string v1, "com.lenovo.fingerprint.verification.stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$1;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/policy/impl/FPSensorObserver;->bRequestVerify:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$202(Lcom/android/internal/policy/impl/FPSensorObserver;Z)Z

    .line 226
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$1;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    const-string v3, "com.lenovo.fingerprint.verification.start"

    # setter for: Lcom/android/internal/policy/impl/FPSensorObserver;->mStopAction:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$502(Lcom/android/internal/policy/impl/FPSensorObserver;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$1;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    # getter for: Lcom/android/internal/policy/impl/FPSensorObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$300(Lcom/android/internal/policy/impl/FPSensorObserver;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x66

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 235
    :cond_5
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 236
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$1;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    # invokes: Lcom/android/internal/policy/impl/FPSensorObserver;->ignoreVeriry()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$700(Lcom/android/internal/policy/impl/FPSensorObserver;)V

    .line 254
    :cond_6
    :goto_2
    monitor-exit v2

    goto :goto_0

    .line 237
    :cond_7
    const-string v1, "com.lenovo.fingerprint.verification.black.result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2
.end method
