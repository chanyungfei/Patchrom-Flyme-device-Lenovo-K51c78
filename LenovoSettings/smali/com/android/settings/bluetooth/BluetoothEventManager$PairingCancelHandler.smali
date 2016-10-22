.class Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$PairingCancelHandler;
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
    name = "PairingCancelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$PairingCancelHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 367
    if-nez p3, :cond_1

    .line 368
    const-string v2, "BluetoothEventManager"

    const-string v3, "ACTION_PAIRING_CANCEL with no EXTRA_DEVICE"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    const v1, 0x7f0c05bb

    .line 372
    .local v1, "errorMsg":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager$PairingCancelHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEventManager;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 375
    .local v0, "cachedDevice":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
