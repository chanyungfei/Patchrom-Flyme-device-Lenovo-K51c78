.class Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;
.super Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)V
    .locals 0
    .param p2, "profile"    # Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager;Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)V

    .line 311
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->mProfile:Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    check-cast v0, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;

    .line 316
    .local v0, "panProfile":Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;
    const-string v2, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 317
    .local v1, "role":I
    invoke-virtual {v0, p3, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;->setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V

    .line 318
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 319
    return-void
.end method
