.class Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultContainerConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 628
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v1, :cond_0

    const-string v1, "PackageManager"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/pm/PackageManagerService;->mServiceConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$202(Lcom/android/server/pm/PackageManagerService;Z)Z

    .line 632
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/pm/PackageManagerService;->mServiceCheck:I
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$302(Lcom/android/server/pm/PackageManagerService;I)I

    .line 633
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v1, :cond_1

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mServiceConnected:Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mServiceCheck:I
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_1
    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    .line 638
    .local v0, "imcs":Lcom/android/internal/app/IMediaContainerService;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 639
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 642
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v0, :cond_0

    const-string v0, "PackageManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/pm/PackageManagerService;->mServiceConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$202(Lcom/android/server/pm/PackageManagerService;Z)Z

    .line 646
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v0, :cond_1

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mServiceConnected:Z
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_1
    return-void
.end method
