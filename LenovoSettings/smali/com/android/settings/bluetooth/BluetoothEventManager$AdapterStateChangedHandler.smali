.class Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;
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
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 162
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 165
    .local v2, "state":I
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->access$1000(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 167
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v4

    monitor-enter v4

    .line 168
    :try_start_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;

    .line 169
    .local v0, "callback":Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;
    invoke-interface {v0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    goto :goto_0

    .line 171
    .end local v0    # "callback":Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->onBluetoothStateChanged(I)V

    .line 174
    return-void
.end method
