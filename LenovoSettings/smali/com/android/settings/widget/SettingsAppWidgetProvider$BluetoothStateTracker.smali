.class final Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;
.super Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$1;

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 1
    .param p0, "bluetoothState"    # I

    .prologue
    .line 504
    packed-switch p0, :pswitch_data_0

    .line 514
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 506
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 508
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 510
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 512
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 457
    # getter for: Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->access$800()Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 458
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 459
    .local v0, "manager":Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 460
    const/4 v1, 0x4

    .line 464
    .end local v0    # "manager":Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;
    :goto_0
    return v1

    .line 462
    .restart local v0    # "manager":Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;
    :cond_0
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    # setter for: Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->access$802(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    .line 464
    .end local v0    # "manager":Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;
    :cond_1
    # getter for: Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->access$800()Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    goto :goto_0
.end method

.method public getButtonDescription()I
    .locals 1

    .prologue
    .line 444
    const v0, 0x7f0c0a3a

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 442
    const v0, 0x7f0b01a2

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 446
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isBQBPass()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    if-eqz p1, :cond_0

    const v0, 0x7f02003b

    .line 450
    :goto_0
    return v0

    .line 447
    :cond_0
    const v0, 0x7f020039

    goto :goto_0

    .line 450
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f02003a

    goto :goto_0

    :cond_2
    const v0, 0x7f020038

    goto :goto_0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 441
    const v0, 0x7f0b01a1

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 443
    const v0, 0x7f0b01a3

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 490
    const-string v1, "SettingsAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActualStateChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    :goto_0
    return-void

    .line 494
    :cond_0
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 495
    .local v0, "bluetoothState":I
    const-string v1, "SettingsAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActualStateChange: bluetoothState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 469
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "requestStateChange "

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    # getter for: Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->access$800()Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 471
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_0
    return-void

    .line 478
    :cond_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;

    invoke-direct {v0, p0, p2}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;-><init>(Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
