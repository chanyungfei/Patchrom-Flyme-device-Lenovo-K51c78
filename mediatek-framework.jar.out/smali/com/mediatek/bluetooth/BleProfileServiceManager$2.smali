.class Lcom/mediatek/bluetooth/BleProfileServiceManager$2;
.super Ljava/lang/Object;
.source "BleProfileServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleProfileServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleProfileServiceManager;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 377
    const-string v0, "BleProfileServiceManager"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    invoke-static {p2}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    move-result-object v1

    # setter for: Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->access$002(Lcom/mediatek/bluetooth/BleProfileServiceManager;Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;)Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    .line 381
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    # invokes: Lcom/mediatek/bluetooth/BleProfileServiceManager;->registerCallback()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->access$100(Lcom/mediatek/bluetooth/BleProfileServiceManager;)V

    .line 382
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    # getter for: Lcom/mediatek/bluetooth/BleProfileServiceManager;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->access$200(Lcom/mediatek/bluetooth/BleProfileServiceManager;)Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    # getter for: Lcom/mediatek/bluetooth/BleProfileServiceManager;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->access$200(Lcom/mediatek/bluetooth/BleProfileServiceManager;)Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;->onServiceConnected(Lcom/mediatek/bluetooth/BleProfileServiceManager;)V

    .line 387
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 392
    const-string v0, "BleProfileServiceManager"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/bluetooth/BleProfileServiceManager;->mService:Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->access$002(Lcom/mediatek/bluetooth/BleProfileServiceManager;Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;)Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    .line 396
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    # getter for: Lcom/mediatek/bluetooth/BleProfileServiceManager;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->access$200(Lcom/mediatek/bluetooth/BleProfileServiceManager;)Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    # getter for: Lcom/mediatek/bluetooth/BleProfileServiceManager;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->access$200(Lcom/mediatek/bluetooth/BleProfileServiceManager;)Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;->onServiceDisconnected(Lcom/mediatek/bluetooth/BleProfileServiceManager;)V

    .line 401
    :cond_0
    return-void
.end method
