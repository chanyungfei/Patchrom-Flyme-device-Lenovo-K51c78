.class Lcom/android/internal/policy/impl/PhoneWindowManager$25;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 6432
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6434
    const-string v1, "WindowManager"

    const-string v2, "mIpoEventReceiver -- onReceive -- entry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6435
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6436
    .local v0, "action":Ljava/lang/String;
    const-string v1, "sys.boot.reason"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6437
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsAlarmBoot:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 6438
    const-string v1, "android.intent.action.normal.shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6439
    const-string v1, "WindowManager"

    const-string v2, "Receive NORMAL_SHUTDOWN_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6440
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsShutDown:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3302(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 6446
    :cond_0
    :goto_0
    return-void

    .line 6441
    :cond_1
    const-string v1, "android.intent.action.normal.boot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6442
    const-string v1, "WindowManager"

    const-string v2, "Receive NORMAL_BOOT_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6443
    const-string v1, "service.bootanim.exit"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6444
    const-string v1, "ctl.start"

    const-string v2, "bootanim"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
