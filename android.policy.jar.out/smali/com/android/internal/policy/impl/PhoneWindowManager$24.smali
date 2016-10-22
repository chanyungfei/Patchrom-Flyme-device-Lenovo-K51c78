.class Lcom/android/internal/policy/impl/PhoneWindowManager$24;
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
    .line 6415
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6417
    const-string v1, "WindowManager"

    const-string v2, "mIpoEventReceiver -- onReceive -- entry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6418
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6419
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6420
    const-string v1, "WindowManager"

    const-string v2, "Receive IPO_ENABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6421
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->ipoSystemShutdown()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 6428
    :goto_0
    return-void

    .line 6422
    :cond_0
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6423
    const-string v1, "WindowManager"

    const-string v2, "Receive IPO_DISABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6424
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->ipoSystemBooted()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0

    .line 6426
    :cond_1
    const-string v1, "WindowManager"

    const-string v2, "Receive Fake Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
