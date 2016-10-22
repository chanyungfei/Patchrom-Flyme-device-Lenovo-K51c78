.class Lcom/android/server/LocationManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 331
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->locationIPOremoveProvider()V
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$700(Lcom/android/server/LocationManagerService;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->locationIPOcreateProvider()V
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$800(Lcom/android/server/LocationManagerService;)V

    .line 337
    iget-object v1, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;)V

    goto :goto_0
.end method
