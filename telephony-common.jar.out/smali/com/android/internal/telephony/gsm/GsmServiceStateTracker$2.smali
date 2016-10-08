.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 521
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v5, "registry"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistry:Z
    invoke-static {v2, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1902(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z

    .line 522
    const-string v2, "GsmSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Simulate IMS Registration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistry:Z
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v2, 0x2

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistry:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    aput v2, v1, v4

    const/16 v2, 0xf

    aput v2, v1, v3

    .line 526
    .local v1, "result":[I
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v7, v1, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 527
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x70

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 528
    return-void

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":[I
    :cond_0
    move v2, v4

    .line 523
    goto :goto_0
.end method
