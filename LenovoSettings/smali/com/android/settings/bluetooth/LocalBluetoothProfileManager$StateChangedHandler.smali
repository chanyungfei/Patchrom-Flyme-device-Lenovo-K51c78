.class Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangedHandler"
.end annotation


# instance fields
.field final mProfile:Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)V
    .locals 0
    .param p2, "profile"    # Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .line 285
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v6, 0x0

    .line 288
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 289
    .local v0, "cachedDevice":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 290
    const-string v3, "LocalBluetoothProfileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StateChangedHandler found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;->access$100(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3, v4, v5, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 294
    :cond_0
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 295
    .local v1, "newState":I
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 296
    .local v2, "oldState":I
    if-nez v1, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 298
    const-string v3, "LocalBluetoothProfileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    invoke-virtual {v0, v3, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;I)V

    .line 302
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 303
    return-void
.end method
