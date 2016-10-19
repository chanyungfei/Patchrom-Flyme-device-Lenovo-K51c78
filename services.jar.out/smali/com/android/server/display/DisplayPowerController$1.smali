.class Lcom/android/server/display/DisplayPowerController$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 467
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 469
    # getter for: Lcom/android/server/display/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    const-string v1, "DisplayPowerController"

    const-string v2, "received ACTION_SHUTDOWN_IPO"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    # setter for: Lcom/android/server/display/DisplayPowerController;->mIPOShutDown:Z
    invoke-static {v1, v3}, Lcom/android/server/display/DisplayPowerController;->access$202(Lcom/android/server/display/DisplayPowerController;Z)Z

    .line 479
    :cond_1
    :goto_0
    return-void

    .line 473
    :cond_2
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    # getter for: Lcom/android/server/display/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 475
    const-string v1, "DisplayPowerController"

    const-string v2, "received ACTION_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    # setter for: Lcom/android/server/display/DisplayPowerController;->mShutDown:Z
    invoke-static {v1, v3}, Lcom/android/server/display/DisplayPowerController;->access$302(Lcom/android/server/display/DisplayPowerController;Z)Z

    goto :goto_0
.end method
