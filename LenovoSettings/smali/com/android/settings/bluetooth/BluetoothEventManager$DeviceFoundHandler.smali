.class Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceFoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 198
    const-string v4, "android.bluetooth.device.extra.RSSI"

    const/16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v3

    .line 199
    .local v3, "rssi":S
    const-string v4, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothClass;

    .line 200
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    const-string v4, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 204
    .local v1, "cachedDevice":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_0

    .line 205
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->access$1000(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 206
    const-string v4, "BluetoothEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    # invokes: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V
    invoke-static {v4, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->access$1400(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V

    .line 217
    invoke-virtual {v1, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    .line 218
    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 219
    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 220
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 221
    return-void
.end method
