.class Lcom/android/server/power/PowerManagerService$MyServiceConnection;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 4290
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$MyServiceConnection;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 4290
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$MyServiceConnection;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 4294
    const-string v0, "PowerManagerService"

    const-string v1, "SmartStandByService connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4295
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$MyServiceConnection;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/lenovo/smartstandby/ISmartStandByServiceBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/smartstandby/ISmartStandByServiceBinder;

    move-result-object v1

    # setter for: Lcom/android/server/power/PowerManagerService;->mISmartStandByServiceBinder:Lcom/lenovo/smartstandby/ISmartStandByServiceBinder;
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$8102(Lcom/android/server/power/PowerManagerService;Lcom/lenovo/smartstandby/ISmartStandByServiceBinder;)Lcom/lenovo/smartstandby/ISmartStandByServiceBinder;

    .line 4296
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$MyServiceConnection;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsBound:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$8202(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 4297
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 4300
    const-string v0, "PowerManagerService"

    const-string v1, "SmartStandByService disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4301
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$MyServiceConnection;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mISmartStandByServiceBinder:Lcom/lenovo/smartstandby/ISmartStandByServiceBinder;
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$8102(Lcom/android/server/power/PowerManagerService;Lcom/lenovo/smartstandby/ISmartStandByServiceBinder;)Lcom/lenovo/smartstandby/ISmartStandByServiceBinder;

    .line 4302
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$MyServiceConnection;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsBound:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$8202(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 4303
    return-void
.end method
