.class Lcom/mediatek/bluetooth/BleDeviceManager$2;
.super Ljava/lang/Object;
.source "BleDeviceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleDeviceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleDeviceManager;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 99
    const-string v0, "BleDeviceManager"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    invoke-static {p2}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBleDeviceManager;

    move-result-object v1

    # setter for: Lcom/mediatek/bluetooth/BleDeviceManager;->mService:Lcom/mediatek/bluetooth/IBleDeviceManager;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BleDeviceManager;->access$102(Lcom/mediatek/bluetooth/BleDeviceManager;Lcom/mediatek/bluetooth/IBleDeviceManager;)Lcom/mediatek/bluetooth/IBleDeviceManager;

    .line 103
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    # getter for: Lcom/mediatek/bluetooth/BleDeviceManager;->mDeviceManagerListener:Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleDeviceManager;->access$200(Lcom/mediatek/bluetooth/BleDeviceManager;)Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    # getter for: Lcom/mediatek/bluetooth/BleDeviceManager;->mDeviceManagerListener:Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleDeviceManager;->access$200(Lcom/mediatek/bluetooth/BleDeviceManager;)Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;->onServiceConnected(Lcom/mediatek/bluetooth/BleDeviceManager;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 110
    const-string v0, "BleDeviceManager"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/bluetooth/BleDeviceManager;->mService:Lcom/mediatek/bluetooth/IBleDeviceManager;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BleDeviceManager;->access$102(Lcom/mediatek/bluetooth/BleDeviceManager;Lcom/mediatek/bluetooth/IBleDeviceManager;)Lcom/mediatek/bluetooth/IBleDeviceManager;

    .line 114
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    # getter for: Lcom/mediatek/bluetooth/BleDeviceManager;->mDeviceManagerListener:Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleDeviceManager;->access$200(Lcom/mediatek/bluetooth/BleDeviceManager;)Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    # getter for: Lcom/mediatek/bluetooth/BleDeviceManager;->mDeviceManagerListener:Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/BleDeviceManager;->access$200(Lcom/mediatek/bluetooth/BleDeviceManager;)Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;->onServiceDisconnected()V

    .line 117
    :cond_0
    return-void
.end method
